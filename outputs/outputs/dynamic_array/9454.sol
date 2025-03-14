pragma solidity ^0.8.0;
contract Arrays13 {
    uint256[][][] public s3;
    constructor() public{
        s3[0] = new uint256[1][][];
        s3[0][0] = new uint256[](1);
        uint256 a = s3.length;
        uint256 b = s3.length - 1;
        uint256 c = s3.length - 1;
    }
}
