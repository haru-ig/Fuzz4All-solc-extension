pragma solidity ^0.8.0;
contract Moderated {
    bool constant modifier onlyWithMutability(Mutated m) { return true; }
    uint256 constant value = 1;
    uint i;
    bool public active = true;
    constructor() { }
    function incrementIncrementIncrement() onlyWithMutability(value) public {
        if (active) {
            i += 1;
        }
    }
}
