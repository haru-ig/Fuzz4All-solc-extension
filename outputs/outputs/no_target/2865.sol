pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage{
    mapping(uint => uint) c;
    constructor() public {
        c[1] += 1;
    }
}
