pragma solidity ^0.8.0;
contract C {
    bytes32 a;
    bytes32 b;
    uint a_;
    uint b_;
    constructor(bytes32 _a, bytes32 _b, uint _a_, uint _b_) public {
        a = _a; a_ = _a_;
        b = _b; b_ = _b_;
    }
}
