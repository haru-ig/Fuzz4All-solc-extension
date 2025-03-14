pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutatedStorage {
    struct x{
        x(uint,uint) p;
    }
    mapping(x memory) v;
    constructor() public {
        v.p[0] = x(0, 100);
    }
}
