pragma solidity ^0.8.0;
contract B {
    struct C {}
    C constant public _c = C();
    function mutated(uint) public pure returns (uint,bool) {
        (uint, bool) memory memory = (uint(_c), false);
        return (0, (! memory.value || memory.value > (uint32) 10**620));
    }
}
```

# 8.1 - Contract Design
This is the beginning of the contract design stages as solidity makes it easy to design smart contracts. It includes the following stages:
- Assembly
- Contract Structure
- Interface Definition
- State Definition

## The Assembly Stage
The Assembly stage is the final form of the contract design, allowing developers to focus on the contract implementation. With the addition of inline assembly blocks, this final form no longer works.

However, we can design a contracts with the concept of contract inheritance. As long as we have a well defined interface contract with a contract's contract method, we will be able to perform inheritance.

## The Contract Structure Stages
The contract stucture stages of Solidity makes it easier to define functions and events in a contract, which then is used by our smart contract.
