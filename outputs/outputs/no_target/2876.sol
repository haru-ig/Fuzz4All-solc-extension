pragma solidity ^0.8.0;
contract moderatedStorage{
    uint a;
    uint b;
    mapping(uint => uint) c;
    mapping(uint => mapping(address => uint)) d;
    constructor() public {
        c[1] += 1;
        d[1][address(1)] += 1;
    }
}
