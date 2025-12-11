//primechecker.qc

import "stdlib/math.qc" as math

//QUANTUM GENERATOr
Class QuantumMiner:

    func init():
        print("   [System] Quantum Miner Initialized.")

    // Generate 'n' random bits using Hadamard gates
    func get_random_int(bits: Int) -> Int:
        mut result = 0
        mut current_bit = 0

        while current_bit < bits:
            quantum q[1]
            apply Hadamard(q[0])
            let b = measure(q[0])

            // Add 2^current_bit if measurement is 1
            if b == 1:
                let weight = to_int(math.pow(2.0, to_float(current_bit)))
                result = result + weight

            current_bit = current_bit + 1

        return result

    // Keep generating quantum numbers until a Prime is found
    func mine_prime(bits: Int) -> Int:
        print("   ... Mining " + to_string(bits) + "-bit prime ...")
        mut found = False
        mut prime = 0
        mut attempts = 0

        while Not found:
            attempts = attempts + 1
            let candidate = self.get_random_int(bits)

            // Optimization: Only check odd numbers (or 2)
            mut check_val = candidate
            if check_val % 2 == 0:
                check_val = check_val + 1

            if math.is_prime(check_val):
                prime = check_val
                found = True

        print("   [Success] Found after " + to_string(attempts) + " quantum collapses.")
        return prime

//CLASSICAL ANALYSIS
Class PrimeAnalyzer:

    func init():
        continue

    // Find all prime factors of a number
    func factorize(n: Int) -> String:
        if n < 2:
            return "None"

        mut d = 2
        mut temp = n
        mut result = ""
        mut first = True

        // Remove factors of 2
        while temp % 2 == 0:
            if Not first:
                result = result + " x "
            result = result + "2"
            temp = temp / 2
            first = False

        // Check odd factors
        d = 3
        while d * d <= temp:
            while temp % d == 0:
                if Not first:
                    result = result + " x "
                result = result + to_string(d)
                temp = temp / d
                first = False
            d = d + 2

        if temp > 1:
            if Not first:
                result = result + " x "
            result = result + to_string(temp)

        return result

    // Find the next prime after N
    func next_prime(start: Int) -> Int:
        mut candidate = start + 1
        while True:
            if math.is_prime(candidate):
                return candidate
            candidate = candidate + 1
        return 0 // Unreachable

// MAIN APPLICATION

let miner = new QuantumMiner()
let tool = new PrimeAnalyzer()
mut running = True

print("========================================")
print("      QUANTICA PRIME ARCHITECT          ")
print("========================================")

while running:
    print("\n[MENU]")
    print("1. Check Primality")
    print("2. Factorize Number")
    print("3. Find Next Prime")
    print("4. Mine Quantum Prime (Random Gen)")
    print("5. Exit")

    let choice = input(">> ")

    if choice == "1":
        let n_str = input("Enter number: ")
        let n = to_int(n_str)
        if math.is_prime(n):
            print("✅ " + n_str + " is PRIME.")
        else:
            print("❌ " + n_str + " is COMPOSITE.")

    elif choice == "2":
        let n = to_int(input("Enter number to factorize: "))
        if math.is_prime(n):
            print("Result: " + to_string(n) + " (It is already prime)")
        else:
            print("Factors: " + tool.factorize(n))

    elif choice == "3":
        let n = to_int(input("Start searching from: "))
        let next_p = tool.next_prime(n)
        print("Next prime is: " + to_string(next_p))

    elif choice == "4":
        print("Select Bit Depth (Complexity):")
        print("  4 bits (0-15)")
        print("  8 bits (0-255)")
        print(" 12 bits (0-4096)")
        let bits = to_int(input("Bits: "))

        if bits > 0:
            let p = miner.mine_prime(bits)
            print("💎 Mined Quantum Prime: " + to_string(p))
        else:
            print("Invalid bit count.")

    elif choice == "5":
        print("Shutting down.")
        running = False

    else:
        print("Invalid Command.")