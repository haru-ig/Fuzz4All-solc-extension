pragma solidity ^0.8.0;
contract Arrays12{
    uint256[][] public s2;
    constructor() public{
        s2[0] = new uint256[](3);
        uint256 a = s2.length - 1;
    }
}
