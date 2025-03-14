pragma solidity ^0.8.0;
uint256 constant initG = 0x3eb75200000000000000000000000000000000000000000000000011da125d52011;
contract Q {
    uint64 public g;
    constructor() public {
        g = initG * 30;
    }
}
