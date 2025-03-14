pragma solidity ^0.8.0;
contract T3D {
    uint256[] mem = new uint256[](2);
    uint256 s;
    constructor () {
        s = 123;
        mem[0] = 123;
        mem[1] = 456;
    }
}
