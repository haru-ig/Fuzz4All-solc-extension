pragma solidity ^0.8.0;
contract C {
    uint public c;
    uint public d;
    uint[] private x;
    uint[10000] memory y;
    constructor() {
        x = new uint[](10);
        c += 10;
        x[0] = 3;
    }
    function f() public {
        x[3] += 10;
        x[3] += 5;
        x[4] += x[3];
        c += 10;
    }
}
