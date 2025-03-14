pragma solidity ^0.8.0;
contract C {
    bytes32 constant private A = 0x3;
    uint public a_;
    uint public b_;
    bytes32 public c;
    bytes32 public d;
    constructor() public {
        bytes32 _a; bytes32 _b; uint _a_; uint _b_;
        (a_, _a) = (A, _a);
        (b_, _b) = (0x3030303, 0x5);
        c = (bytes32(0x3), bytes32(0x30303))[0];
        _a_ = a_; _b_ = b_;
    }
}
