pragma solidity ^0.8.0;
contract T3D {
    uint256 s = 123;
    uint256[] mem = new uint256[](3);
    constructor () {
        mem[0] = 123;
        mem[1] = 456;
        mem[2] = 789;
    }
}
