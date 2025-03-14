pragma solidity ^0.8.0;
contract L25Mutated {
    uint x;
    uint internal _next_val;
    constructor() {
        _next_val = 0;
    }
    uint M = 5;
    function modifyCalled() public {
        x = x + 1;
        x = x * 2;
        x = x + M;
        uint inc = _next_val * 2;
        _next_val = inc;
    }
}
