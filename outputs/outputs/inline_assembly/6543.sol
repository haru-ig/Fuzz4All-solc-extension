pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample72 {
    uint a_;
    uint b_;
    uint c_;
    constructor(uint d1, uint d2, uint d3) public {
        a_ = d1;
        b_ = d2;
        c_ = d3 * 7;
    }
    receive() external payable {
        c_++;
    }
}
