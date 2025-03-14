pragma solidity ^0.8.0;
contract Arrays13{
    uint256[][] public s2;
    uint256[][][] public s2s;
    constructor() public{
        s2[0] = new uint256[](3)[];
        uint256 a = s2[0].length - 1;
    }
}
