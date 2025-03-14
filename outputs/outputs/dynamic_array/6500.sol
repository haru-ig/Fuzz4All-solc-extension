pragma solidity ^0.8.0;
contract T3D {
    uint256 s = 123;
    uint256[] mem = new uint256[][](2);
    constructor () {
        mem[0] = new uint256[](1);
        mem[0][0] = 123;
        mem[1] = new uint256[](1);
        mem[1][0] = 456;
    }
}

pragma solidity ^0.8.0;
contract T3E {
    uint256 s = 123;
    uint256[] mem = new uint256[][](2);
    constructor () {
        uint256[] memory mem0 = new uint256[](1);
        mem0[0] = 123;
        mem[0] = mem0;
        uint256[] memory mem1 = new uint256[](1);
        mem1[0] = 456;
        mem[1] = mem1;
    }
}
