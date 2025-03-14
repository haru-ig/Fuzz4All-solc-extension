pragma solidity ^0.8.0;

contract Mutated {
    constructor(
        uint value
    ) {
        a[1] = value;
    }

    function willEqual(uint x, uint y) public pure returns (bool) {
        if (x < y) return true;
        if (x == y) return true;
        return false;
    }
}
