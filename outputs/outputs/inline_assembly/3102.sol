pragma solidity ^0.8.0;
contract C {
    bytes32 a;
    bytes32 b;
    uint a_;
    uint b_;
    constructor(bytes memory _a, bytes memory _b, uint _a_, uint _b_) public {
        a = abi.encodePacked(_a); a_ = _a_;
        b = abi.encodePacked(_b); b_ = _b_;
    }
}
