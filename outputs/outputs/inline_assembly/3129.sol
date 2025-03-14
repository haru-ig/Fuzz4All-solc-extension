pragma solidity ^0.8.0;
contract C {
    bytes32 public a;
    bytes32 public b;
    bytes32 constant abc = 0x123456789abcdef8123456789abcdef812;
    constructor(uint _a, uint _b, bytes32 _b_) public {
        a = abc;
        b = _b_;
    }
}

contract C {
    bytes32 public a;
    bytes32 constant b = bytes32(0x12345678);
    bytes32 constant c = bytes32(-0x34567890);
    bytes32 constant d = bytes32(-0x345991234567890);
    bytes32 constant e = bytes32(0xffffffffffffffff);
    constructor(uint a_, bytes32 _b_) public {
        a = _b_;
    }
}
