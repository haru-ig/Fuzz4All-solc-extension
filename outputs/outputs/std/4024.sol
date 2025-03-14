pragma solidity ^0.8.0;
contract Mutate {
    function setPrev(uint element, uint prev) public { head.val = element; head.next = prev; }
}

```

## Compiling and Execution

Run `solium <contract-file>.sol` to run the Solidity compiler on your Solidity file and inspect the results of the compilation.

Run `npx hardhat run <contract-file>.test.js` to run the tests in your contract, passing the necessary parameters: the test file name and parameters. If successful, you should see a summary table indicating the passing and failing tests in the order of the file tests.

Run `npx hardhat help` to see a list of available commands.

For help on a specific command, run `npx hardhat <command> --help` where `<command>` is one of the following:
* deploy: deploy a Solidity contract to the Ethereum blockchain
* test: run the tests in the Hardhat test suite
* generate: generate Solidity artifacts to deploy Smart Contracts
* run <contract> <command>: run the command of `contract-file.contract.js`<br>
Example: `npx hardhat run./tests/Mutations.test.js`


## License

Solidity 0.8.x source code written by <NAME>.
