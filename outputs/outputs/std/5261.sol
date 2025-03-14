pragma solidity ^0.8.0;
contract MyContract {
    uint public myconst;

    constructor() {
        uint constant v1 = 20;
        uint constant v2 = 8;
        uint constant v3, v4;
        v3 = v1 > v2;
        v4 = v2 == v1;
        v3 = v2 < v3;
        v4 = v2 >= v3;
        v4 = v1 & v2;
        v2 = v1 | v2;
        v2 = v1 ^ v2;
        v2 = ~v1;
    }
    function g() public {
        uint constant v1 = 20;
        uint constant v2 = 8;
        uint constant v3 = v1 >> 1;
        uint constant v4 = v2 << 3;
    }
}
