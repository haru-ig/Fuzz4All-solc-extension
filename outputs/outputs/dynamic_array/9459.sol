pragma solidity ^0.8.0;
contract Arrays13{
    uint256[][] public s2;
    constructor() public{
        uint256[] memory a = new uint256[](3);
        s2[0] = a;
        uint256 a1 = s2[1][0];
    }
}
