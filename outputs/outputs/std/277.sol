pragma solidity ^0.8.0;
```

5. Once the mutation test runs for 7 runs, save your results to a file in the `mutator-results` folder in the same folder where you find the `Mutator.sol` and `Convert.sol` files.

## Generating mutated programs

Run the mutation tests in your local environment. The mutated programs can be saved to your local machine so that other developers can try them out.

1. Clone this repository to your local machine.
2. Open a new terminal in the cloned repo's root folder and run:

```bash
$ truffle migrate
```

3. The initial contract will have a single address `0x303b6d1564408615e0b66c583103bafa713ed853`. Your mutated contract will replace that address.

4. Open a new terminal and run:

```bash
$ truffle develop
```

5. In the `Mutator.sol` contract, uncomment the code that uses that `address` value, and comment out the code that adds it to the array of addresses.

6. Open a new terminal and run the mutator test:

```bash
$ truffle test
```

7. Review the output of the mutation test in `truffle-test.results` for the mutated program.

## Resulting mutated contract

The mutated contract changes the order of several parts of its source code so that it can successfully compile to the intended bytecode for the intended purpose.

The resulting mutated contract can be saved to a file and deployed to your web3 account.
