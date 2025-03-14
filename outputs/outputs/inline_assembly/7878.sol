pragma solidity ^0.8.0;
contract L25 {
    uint x;
    uint constant M = 3;
    constructor() {
        x = 10;
    }
    uint constant M = 1;

    function modifyCalled() public {
        x = x + 1;
        x = x * 2;
        x = x + M;
    }
}
