pragma solidity ^0.8.0;
contract Mutate21 {
    uint previousBalance = 10e18;
    uint public previousBalance2 = previousBalance;
    uint initialBalance = 10e18;
    constructor() {
        previousBalance2 += address(this).balance;
        previousBalance2 += 0;
    }
}

```
In the previous code the contract address was used when the address of the contract itself was needed.
In the following code the contract address is required only when the contract itself is accessed.
```solidity
pragma solidity ^0.8.0;
contract Mutate22 {
    uint public previousBalance;
    uint public previousBalance2;
    uint initialBalance;
    constructor() {
        previousBalance = previousBalance;
        previousBalance += address(this).balance;
        previousBalance += 0;
    }
}
```
