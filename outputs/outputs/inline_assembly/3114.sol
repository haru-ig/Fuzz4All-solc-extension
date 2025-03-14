pragma solidity ^0.8.0;
contract C {
    bytes32 a;
    bytes32 b;
    uint a_;
    uint b_;
    constructor(bytes32 _a) public {
        a = _a; a_ = a;
        b = "0xc2b1b3c72e6f89c579f8f9300b585306f1c3cc1b3f5ee3453123bc9334c1d4e7"; b_ = a;
    }
}
