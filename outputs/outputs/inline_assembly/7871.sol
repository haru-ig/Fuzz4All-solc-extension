pragma solidity ^0.8.0;
contract L25 {
    uint x;
    constructor() {
        x = 10;
    }
    uint constant M = 3;
    function modifyCalled() public {
        x = x + 1;
        x = x * 2;
        x = x + M;
    }
}
