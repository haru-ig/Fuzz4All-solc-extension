pragma solidity ^0.8.0;
contract C {
    uint[] [2,3] b1;
    constructor (uint[2][3] memory n) public {
        b1.push(0, uint32(n[0]));
        b1.push(0, uint32(n[1]));
    }
}
