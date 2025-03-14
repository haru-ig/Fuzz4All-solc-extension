pragma solidity ^0.8.0;
contract Arrays13{

    uint256[][] public s3;
    constructor() public{
        s3[0] = new uint256[](0);
        s3.push(new uint256[](5));
        s3[1][5] = 1111111111;
        s3[1].push();
        s3[1][0] = 1;
        s3[3] = new uint256[](3);
        s3[3][1] = 5;
        s3[3][4] = 6;
        s2[0][0] = 0;
        s2[2][1] = 0;
        s3[2][2] = 0;
        s3[1][4] = 0;
    }
}
