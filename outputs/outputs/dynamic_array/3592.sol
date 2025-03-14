pragma solidity ^0.8.0;
contract D {
    struct A {
        uint256 x,y,z;
    }
    constructor () public {
        A storage a;
        uint256 y;
        uint32 z;
        a.x = 2**256 - 1;
        a.y = 15;
        a.z = 2**256-1;
    }
}
