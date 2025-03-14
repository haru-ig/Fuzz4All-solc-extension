pragma solidity ^0.8.0;
contract C {
    bytes32 a;
    bytes32 b;
    uint a_;
    uint b_;
    constructor(bytes32 _a, uint _a_, uint _b_, bytes32 _b) public {
        b = _b; b_ = _b;
        a = _a; a_ = _a_;
    }
}
