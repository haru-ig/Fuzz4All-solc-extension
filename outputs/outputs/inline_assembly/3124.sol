pragma solidity ^0.8.0;
contract D {
    bytes32 d;
    bytes32 public b;
    bytes32 public d_;
    constructor(bytes32 _b) public {
        b = 0xff; b_;
        assert(1 == _b);


        bytes8 d_ = _b ^ uint8(1337+1);
        d = hash_keccak256(abi.encodePacked(d_));
        d_ = d;
    }
}
