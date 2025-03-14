pragma solidity ^0.8.0;
contract Arrays22{
    uint256[30][] public s3;
    constructor() public{
        for (uint i=0; i < s3.length - 1; i++) s3[i] = new uint256[](10);
        uint256[] a = s3.length - 1;
    }
}
