import "stdlib/ai.qc" as ai
import "stdlib/math.qc" as math

print("=== QUANTICA MNIST TRAINING ===")

/* --- Helper: One-Hot Encode Labels --- */
func one_hot(label: Int) -> Float[]:
    mut target = []
    mut i = 0
    while i < 10:
        if i == label:
            target = target + [1.0]
        else:
            target = target + [0.0]
        i = i + 1
    return target

/* --- Helper: Load CSV Data --- */
func load_mnist(filename: String, max_samples: Int) -> ai.Dataset:
    print("DEBUG: Reading " + filename + "...")
    let content = file_read(filename)
    let lines = split(content, "\n")

    let dataset = new ai.Dataset()
    let total_lines = len(lines)
    print("DEBUG: Total lines in file: " + to_string(total_lines))

    mut i = 0
    mut samples_loaded = 0
    mut debug_skips = 0

    while i < total_lines:
        if samples_loaded >= max_samples:
            i = total_lines + 1

        if i < total_lines:
            let line = lines[i]

            // Debug: Check if line is too short
            if len(line) <= 10:
                if debug_skips < 5:
                    print("SKIP [Short Line]: Length=" + to_string(len(line)))
                debug_skips = debug_skips + 1
            else:
                let values = split(line, ",")

                // Debug: Check first token
                let label_str = values[0]

                if label_str == "label":
                    if debug_skips < 5:
                        print("SKIP [Header Found]")
                    debug_skips = debug_skips + 1
                else:
                    // LOAD DATA
                    let label = to_int(label_str)
                    let target = one_hot(label)

                    mut input = []
                    mut p = 1
                    while p < 785:
                        let pixel = to_float(values[p]) / 255.0
                        input = input + [pixel]
                        p = p + 1

                    dataset.add_sample(input, target)
                    samples_loaded = samples_loaded + 1

                    if (samples_loaded % 100) == 0:
                        print("DEBUG: Loaded " + to_string(samples_loaded) + " samples...")

        i = i + 1

    print("SUCCESS: Loaded " + to_string(dataset.size) + " samples.")
    return dataset
/* --- MAIN TRAINING --- */

// Loading Data
print("--- 1. Loading Training Set ---")
let train_data = load_mnist("mnist_train.csv",1000)

print("\n--- 2. Loading Test Set ---")
let test_data = load_mnist("mnist_test.csv", 100)

// Creating Network
print("\n--- 3. Initializing Network ---")
let nn = new ai.NeuralNetwork(0.1)
nn.add_layer(784, 128, "relu")
nn.add_layer(128, 10, "sigmoid")

// Train with Timer
print("\n--- 4. Starting Training ---")

// Start timer
let start_time = time()

ai.train_network(nn, train_data, 6, 1, True)

// Stop timer
let end_time = time()
let duration = end_time - start_time
print(">> Total Training Time: " + to_string(duration) + " seconds")

//Evaluate
print("\n--- 5. Evaluating ---")
let acc = ai.evaluate_network(nn, test_data, 0.5)
print(">> TEST ACCURACY: " + to_string(acc * 100.0) + "%")

// Save
print("\n--- 6. Saving Model ---")
nn.save("mnist_brain.qmodel")
