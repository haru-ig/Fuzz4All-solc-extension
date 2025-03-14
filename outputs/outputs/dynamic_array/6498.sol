pragma solidity ^0.8.0;
contract T3B {
    uint256 s = 123;
    uint256[] mem = new uint256[](1);
    constructor () {
        mem[0] = 123;
    }
}
contract T3C {
    uint256 s = 123;
    uint256[] mem = new uint256[](2);
    constructor () {
        mem[0] = 123;
        mem[1] = 456;
    }
}
