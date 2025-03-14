pragma solidity ^0.8.0;
contract SemanticallyEquivalentToPreviousGeneration {
    uint a;
    constructor(uint b) {
        a = b;
    }
    function f(uint c) public pure {
        assert(c == addOrSubtract(a, addOrSubtract(c, a)));
    }
}
