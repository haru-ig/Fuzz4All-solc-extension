pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage{
    uint a;
    uint b;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    constructor() public {
        c[a] -= 1;
        c[b] -= 1;
        d[a][b] -= 1;
        d[b][a] -= 1;
    }



}
