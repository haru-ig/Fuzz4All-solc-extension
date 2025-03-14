pragma solidity ^0.8.0;
contract C {
    uint[] public numArray;
    uint public total;
    uint public x;
    function add() public {
        x += total;
    }
}
```

<hr>

# 9. Optimizing Contract

In most compilers, a compile and link phase are the most expensive. The more instructions or opcodes that you've selected, the more expensive it becomes.

To reduce the amount of cost of your Smart Contracts, you have to keep in mind that your smart contracts should be optimized.
