pragma solidity ^0.8.0;
contract C {
    address a;
    uint a_;
    uint b;
    constructor(address _a, uint _a_, uint _b) public {
        a = _a; a_ = _a_;
        b = _b; b_ = _b_;
    }
}
