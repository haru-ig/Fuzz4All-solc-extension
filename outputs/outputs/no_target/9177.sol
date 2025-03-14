pragma solidity ^0.8.0;
contract smarter_abi5 {
    uint a;
    constructor(uint8 a_) public {
        a = a_;
    }
    uint8 public get_a() {
        return a;
    }
}
