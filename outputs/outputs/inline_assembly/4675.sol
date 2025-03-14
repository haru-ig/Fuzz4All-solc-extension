pragma solidity ^0.8.0;
contract mutator {
    function f(uint x) public pure {
        x = z;
    }
    uint z = 2;
    constructor() {
        f(z);
    } }
