// calculator.qc
// A complete Interactive Quantum Calculator

import "stdlib/math.qc" as math

// --- 1. Define the Calculator Class ---
Class AdvancedCalculator:

    func init():
        print("Initializing Advanced Quantum Calculator...")

    // Basic Arithmetic
    func add(a: Float, b: Float) -> Float:
        return a + b

    func subtract(a: Float, b: Float) -> Float:
        return a - b

    func power(base: Float, exp: Float) -> Float:
        return math.pow(base, exp)

    // Statistics (Corrected to use 'Any' for array input)
    func mean(numbers: Any) -> Float:
        let count = len(numbers)
        if count == 0:
            return 0.0

        mut sum = 0.0
        for n in numbers:
            sum = sum + to_float(n)

        return sum / to_float(count)

    // Quantum Random Number Generator
    func quantum_random_int(bits: Int) -> Int:
        print("...Spinning up Quantum Processor...")

        mut result = 0
        mut current_bit = 0

        while current_bit < bits:
            quantum q[1]
            apply Hadamard(q[0])
            let measurement = measure(q[0])

            // Calculate 2^current_bit manually if power returns float
            let bit_val = measurement * to_int(math.pow(2.0, to_float(current_bit)))
            result = result + bit_val

            current_bit = current_bit + 1

        return result

// --- 2. Main Execution Loop ---

print("=== QUANTICA INTERACTIVE CALCULATOR ===")
let calc = new AdvancedCalculator()

mut running = True

while running:
    print("\nSelect Operation:")
    print("1. Add (+)")
    print("2. Subtract (-)")
    print("3. Power (^)")
    print("4. Quantum Random Number")
    print("5. Statistics (Mean)")
    print("6. Exit")

    // This requires the 'input' function you added to the compiler!
    let choice = input("Enter choice (1-6): ")

    if choice == "1":
        let s_a = input("Enter first number: ")
        let s_b = input("Enter second number: ")
        let a = to_float(s_a)
        let b = to_float(s_b)
        print("Result: " + to_string(calc.add(a, b)))

    elif choice == "2":
        let s_a = input("Enter first number: ")
        let s_b = input("Enter second number: ")
        print("Result: " + to_string(calc.subtract(to_float(s_a), to_float(s_b))))

    elif choice == "3":
        let base = to_float(input("Base: "))
        let exp = to_float(input("Exponent: "))
        print("Result: " + to_string(calc.power(base, exp)))

    elif choice == "4":
        let bits_str = input("How many bits (1-8)? ")
        let bits = to_int(bits_str)
        let rng = calc.quantum_random_int(bits)
        print("Quantum Random Number: " + to_string(rng))

    elif choice == "5":
        print("Enter numbers separated by commas (e.g. 10, 20, 30)")
        let input_str = input("Numbers: ")

        // Split string into array of strings: ["10", "20", "30"]
        let data_list = split(input_str, ",")

        // Calculate mean (func automatically converts strings to floats)
        let avg = calc.mean(data_list)
        print("Mean: " + to_string(avg))

    elif choice == "6":
        print("Exiting...")
        running = False

    else:
        print("Invalid choice, please try again.")
