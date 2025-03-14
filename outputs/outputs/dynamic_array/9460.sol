pragma solidity ^0.8.0;
contract Arrays14{
    uint256[][] public s2;
    constructor() public{
        s2[0] = new uint256[](3);
        s2[1] = new uint256[](2);
        uint256 a1 = s2[1][0];
    }
}
