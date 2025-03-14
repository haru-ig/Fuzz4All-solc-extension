pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract old{
    mapping(uint => uint) c;
    constructor() public{
        c[c.length++] += 1;
        c[c.length++] += 1;
    }
}
