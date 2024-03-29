# Multiplier2 Circuit

This repository contains a **circom** circuit called **Multiplier2**. It implements a simple multiplier using AND, NOT, and OR gates.

## Circuit Description

The **Multiplier2** circuit takes two input signals, `a` and `b`, and produces an output signal `Q`. Here's how it works:

1. An **AND gate** computes the product of `a` and `b`.
2. A **NOT gate** negates the value of `b`.
3. An **OR gate** combines the output of the AND gate and the negated value of `b` to produce the final output `Q`.

## Usage

To use this circuit, follow these steps:

1. Install **circom** (version 2.0.0) if you haven't already.
2. Compile the circuit using the following command:

circom circuit.circom -o circuit.json

3. Generate the trusted setup parameters (if needed):

snarkjs setup

4. Create a witness for your specific input values:

snarkjs calculatewitness

5. Compute the proof:

snarkjs proof

6. Verify the proof:

snarkjs verify


## License

This code is provided under the **MIT License**. Feel free to use, modify, and distribute it as needed.

For more information on **circom**, visit the official documentation: circom documentation

Happy circuit designing! 🚀
