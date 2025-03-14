pragma solidity ^0.8.0;
contract C {
    uint public a;
    bytes32 public b;
    uint public a_;
    uint public b_;
    constructor(uint _a, bytes32 _b, uint _a_, uint _b_) public {
        a = _a; a_ = _a_;
        b = _b; b_ = _b_;
    }
}
