pragma solidity ^0.8.0;
contract Test {
    constructor(bool _param) {
        Test test = Test(address(0xAAA));
        bytes32 _param2 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    }
}

```

This program will work on both Solidity ^0.8.0 and 0.7.3. Also, we will use truffle CLI, so the test is not compiled by compiler version `0.8.0`. We will use default arguments for testing.

```shell
$ truffle test./test.test.js
```

The output should match the following snapshot:

```shell
  Test#Test
  ✓ should not access any memory and data
  ✓ should initialize and access data properly
  ✓ should work with nested dynamic calldata array


  Test#Test2
  ✓ should not access any memory and data
  ✓ should initialize and access data properly
  ✓ should work with nested dynamic calldata array

  Test#Test2
  ✓ should not access any memory and data
  ✓ should initialize and access data properly
  ✓ should work with nested dynamic calldata array
```

## Test cases
These are the test cases written by this guideline in Truffle.

```shell
$ truffle test./test.test.js --network development
```

## Test cases
These are the test cases written by this guideline.

```shell
$ npm install
$ npm test
```

## References
- Code style guide - [OpenZeppelin's contract-style-guide](https:
- "Solidity The Complete Training Book" (1st ed) - [Amazon](https:
- "Solidity: The Complete Guide" (1st ed) - [Amazon](https:
- "Solidity for beginners" - [eBook](https:
