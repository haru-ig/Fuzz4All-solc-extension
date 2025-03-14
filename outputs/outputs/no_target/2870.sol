pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage{
    uint a;
    uint b;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    constructor() public {
        c[1] += 1;
        d[1][1] += 1;
    }
}
