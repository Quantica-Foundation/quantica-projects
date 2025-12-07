// fibonacci.qc

import "stdlib/math.qc" as math

Class FibonacciEngine:

    mut memo = {"0": 0, "1": 1}

    func init():
        print("Initializing Fibonacci Engine...")


    func generate_series(n: Int) -> Any:
        if n <= 0:
            return []
        if n == 1:
            return [0]

        // Initialize array
        mut series = [0, 1]

        // Loop from 2 to n-1
        mut i = 2
        while i < n:
            let next_val = series[i-1] + series[i-2]
            i = i + 1

        return series


    func get_recursive_memo(n: Int) -> Int:
        let key = to_string(n)
        if n <= 1:
            return n

        return self.get_recursive_memo(n - 1) + self.get_recursive_memo(n - 2)

    func get_binet(n: Int) -> Int:
        let phi = 1.6180339887
        let psi = -0.6180339887
        let sqrt5 = 2.2360679775

        let top = math.pow(phi, to_float(n)) - math.pow(psi, to_float(n))
        let result = top / sqrt5

        return to_int(math.round(result))


    func print_sequence(n: Int):
        print("Generating first " + to_string(n) + " terms:")

        mut a = 0
        mut b = 1

        if n >= 1: print("1: 0")
        if n >= 2: print("2: 1")

        mut i = 3
        while i <= n:
            let next_val = a + b
            print(to_string(i) + ": " + to_string(next_val))
            a = b
            b = next_val
            i = i + 1

    // Golden Ratio Analyzer
    func analyze_phi(steps: Int):
        print("Analyzing convergence to Golden Ratio (Phi)...")
        print("Target Phi: 1.618033988...")

        mut a = 1.0
        mut b = 1.0
        mut i = 0

        while i < steps:
            let next_val = a + b
            let ratio = next_val / b
            print("F(" + to_string(i+3) + ")/F(" + to_string(i+2) + ") = " + to_string(ratio))

            a = b
            b = next_val
            i = i + 1


print("========================================")
print("   ADVANCED FIBONACCI GENERATOR v1.0    ")
print("========================================")

let fib = new FibonacciEngine()
mut running = True

while running:
    print("\n[MENU]")
    print("1. Generate Sequence (Iterative)")
    print("2. Find Nth Term (Binet's Formula - O(1))")
    print("3. Find Nth Term (Recursive - O(2^n))")
    print("4. Analyze Golden Ratio Convergence")
    print("5. Exit")

    let choice = input("Select Option: ")

    if choice == "1":
        let n = to_int(input("How many terms? "))
        fib.print_sequence(n)

    elif choice == "2":
        let n = to_int(input("Enter N: "))
        let val = fib.get_binet(n)
        print("F(" + to_string(n) + ") = " + to_string(val))
        print("(Calculated instantly using math.qc)")

    elif choice == "3":
        let n = to_int(input("Enter N (Warning: Slow for N > 30): "))
        if n > 30:
            print("Warning: Calculating recursively without memoization is heavy...")

        let start_msg = "Calculating..."
        print(start_msg)
        let val = fib.get_recursive_memo(n)
        print("F(" + to_string(n) + ") = " + to_string(val))

    elif choice == "4":
        let steps = to_int(input("How many steps? "))
        fib.analyze_phi(steps)

    elif choice == "5":
        print("Exiting...")
        running = False

    else:
        print("Invalid choice.")

print("Goodbye!")