pragma solidity ^0.8.0;
contract NoChangeSemantics {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    function sum (uint a, uint b) pure internal returns (uint) {
        return a + b;
    }
    function set (uint _a, uint _b) pure internal returns (uint) {
        return sum(_a, _b);
    }
    function setMutated() private pure {
        assert(false);
        emit set(_a, _b);
    }
}
contract NoChangeSemanticsMutables {
    event Set(uint indexed a, uint indexed b);
    event Mutated();
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    constructor() public {}
    modifier onlySet(uint a, uint b) {
        assert(a + b == TWO);
        _;
    }
}
