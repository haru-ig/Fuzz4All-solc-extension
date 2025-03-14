pragma solidity ^0.8.0;
contract SimpleClass {
    uint256 public constant value = 0;
}
contract Dapp {
    SimpleClass public immutable c = SimpleClass(0);
    function test() public {
        AbiCoder.encode(abi.encode(SimpleClass(c.value), value));
        AbiCoder.decode(abi.encode(SimpleClass(uint8(c.value))))
    }
}
```


The modified code must be deployed to the Ropsten testnet, and executed from a Solidity client version 0.8.6 or later.

You will get a lot of errors during the execution of the program. We have included 8 examples to help you debug them.

**Important note, please do not edit or revert the following four lines of code:

* ` `
* ` `
* `AbiCoder.decodeBytes(..., 0, 0, 0, 0, 0)`
* `AbiCoder.decode(abi.encode(SimpleClass(0), value),...)`

In this case, the compilation of this code will be successful, but execution will crash. You should fix the errors and then delete the lines above.**

To compile our program, enter the following:

```bash

truffle compile
```

If everything will be ok, your deployed code will have the same contents as this folder.

## Contract 0
The last contract is a simple contract that uses only the ABI to print the value.
