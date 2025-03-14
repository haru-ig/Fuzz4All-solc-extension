pragma solidity ^0.8.0;
contract Venus is MutatedMath {
    constructor() {
        value = (sqrt(5) - sqrt(3)) - (BASE - BASE / 2);
    }
    function add(uint a, uint b) public pure returns (uint out) {
        out = a + b;
    }
}
