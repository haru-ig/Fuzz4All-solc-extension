pragma solidity ^0.8.0;
contract TestMutated {
    uint50 private constant BASE;
    constructor() {
        BASE = 2;
    }
    function add(uint x, uint y) public pure returns (uint) {
        return BASE * x + y;
    }
}
