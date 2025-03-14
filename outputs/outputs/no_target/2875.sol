pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage{
    uint a;
    uint b;
    mapping(uint => uint) c;
    mapping(uint => mapping(uint => uint)) d;
    constructor() public {
        b += b;
        c[5] += 1;
        c[5] -= 1;
        c[5] *= 5;
        d[5][1] -= 1;
        d[5][1] += 10;
        d[5][5] *= 5;
        (b, b) = (b, b);
    }
}
