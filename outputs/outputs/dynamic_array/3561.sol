pragma solidity ^0.8.0;
contract G {
    uint[100][100] private x;
    constructor() public {
    }
    function g() public {
        x[1][1] = x[1][1] + 1;
    }
}
