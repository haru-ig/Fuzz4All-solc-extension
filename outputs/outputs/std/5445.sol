pragma solidity ^0.8.0;
contract Mutate12 {
    uint96 initialBalance = 0;
    constructor() {
        initialBalance += 20;
        initialBalance -= address(this).balance;
    }
}
```
Note that it's important to not overwrite variables before the assignment. If we change the value of `initialBalance` and `address(this).balance`, `initialBalance-address(this).balance` will be `9` instead of `8` when reading the state variable.



___


<fim_middle>## Reference
- [Remix IDE](https:
- [Solidity Documentation](https:
