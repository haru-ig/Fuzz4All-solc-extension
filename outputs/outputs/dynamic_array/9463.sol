pragma solidity ^0.8.0;
contract Arrays14{
    uint256[][] public s3;
    constructor() public{
        uint256[][] memory a = new uint256[2][][](2);
        s3[0] = a;
        uint256[] memory a1 = s3[1][0][0];
    }
}
