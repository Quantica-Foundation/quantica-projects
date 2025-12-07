// numberguessgame.qc
// A "True Random" Number Guessing Game powered by Quantum Mechanics
//This game simulates a quantum process. If run on a real Quantum Processing Unit (QPU) using backends, the number generated is fundamentally unpredictable by the laws of physics

import "stdlib/math.qc" as math

// Quantum Random Number Generator
Class QuantumRNG:
    func init():
        print("Initializing Quantum Randomness Engine...")
        print("Hints")
        print("🔥 BURNING HOT! (Difference Within 2)")
        print("🥵 Very Hot (Difference Within 5)")
        print("😊 Warm (Difference Within 10)")
        print("😐 Lukewarm (Diffrence Within 20)")
        print("🥶 Cold (Diffrence Within 50)")
        print("🧊 Freezing (Diffrence more than 50)")

    // Generates 'n' random bits using superposition
    func get_random_bits(num_bits: Int) -> Int:
        mut result = 0
        mut current_bit = 0

        while current_bit < num_bits:
            quantum q[1]
            apply Hadamard(q[0])
            let bit = measure(q[0])

            // 2^n
            let weight = to_int(math.pow(2.0, to_float(current_bit)))
            result = result + (bit * weight)

            current_bit = current_bit + 1

        return result

    // Rejection sampling for specific range
    func random_range(min_val: Int, max_val: Int) -> Int:
        let range = max_val - min_val
        // Estimate bits needed (2^7 = 128 covers 0-100, 2^10=1024 covers 0-1000)
        let bits_needed = 10

        mut val = range + 1

        // Keep measuring until we hit a valid number in range
        while val > range:
            val = self.get_random_bits(bits_needed)

        return min_val + val


// Game Logic Class
Class Game:
    func init():
        print("Loading Game Logic...")

    func get_temperature_hint(guess: Int, target: Int) -> String:
        // Using standard library for absolute value
        let diff = math.abs_int(guess - target)

        if diff == 0:
            return "CORRECT"
        if diff <= 2:
            return "🔥 BURNING HOT! (Within 2)"
        if diff <= 5:
            return "🥵 Very Hot (Within 5)"
        if diff <= 10:
            return "😊 Warm (Within 10)"
        if diff <= 20:
            return "😐 Lukewarm (Within 20)"
        if diff <= 50:
            return "🥶 Cold"
        return "🧊 Freezing"

    func play():
        let rng = new QuantumRNG()
        mut running = True

        while running:
            print("\n==========================================")
            print("   QUANTUM GUESSER: ADVANCED EDITION      ")
            print("==========================================")
            print("Select Difficulty:")
            print("1. Easy   (1-10,  5 attempts)")
            print("2. Medium (1-100, 7 attempts)")
            print("3. Hard   (1-500, 10 attempts)")
            print("4. Exit")

            let choice = input("Choice: ")

            mut max_val = 100
            mut max_attempts = 7

            if choice == "1":
                max_val = 10
                max_attempts = 5
            elif choice == "2":
                max_val = 100
                max_attempts = 7
            elif choice == "3":
                max_val = 500
                max_attempts = 10
            elif choice == "4":
                print("Thanks for playing!")
                running = False
                break
            else:
                print("Invalid choice, defaulting to Medium.")

            print("\nGenerating target number between 1 and " + to_string(max_val) + "...")
            let target = rng.random_range(1, max_val)

            print("Target acquired in superposition.")
            print("You have " + to_string(max_attempts) + " attempts.")

            mut attempts = 0
            mut won = False

            while attempts < max_attempts:
                attempts = attempts + 1
                let remaining = max_attempts - attempts

                print("\nAttempt " + to_string(attempts) + "/" + to_string(max_attempts))

                Try:
                    let input_str = input("Enter guess: ")
                    let guess = to_int(input_str)

                    if guess == target:
                        print("\n🎉 BINGO! You captured the state |" + to_string(target) + ">!")
                        // Calculate Score: (Remaining attempts * 100) * Difficulty Multiplier
                        let score = (remaining + 1) * 100
                        print("🏆 Final Score: " + to_string(score))
                        won = True
                        break

                    elif guess < target:
                        print("🔼 Too Low!")
                    else:
                        print("🔽 Too High!")


                    print("Hint: " + self.get_temperature_hint(guess, target))

                Catch err:
                    print("⚠️  Invalid input! That cost you an attempt.")

            if Not won:
                print("\n💀 Game Over! The quantum state collapsed to: " + to_string(target))

            let play_again = input("\nPlay again? (y/n): ")
            if play_again != "y":
                running = False

// Start
let game = new Game()
game.play()
