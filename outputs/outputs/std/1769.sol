pragma solidity ^0.8.0;
contract Mutated {
    constructor(uint num1, uint num2) public {
        Mutated mut = new Mutated();
        mut.mutateB(num1);
    }
}
