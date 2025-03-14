pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint public nonces[msg.sender];
    uint public immutable nonces1[msg.sender];
    uint public immutable withInit[msg.sender]{0x0102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f202122232425262728292a2b2c2d2e2f303132333435363738393a3b3c3d3e3f404142434445464748494a4b4c4d4e4f;
    uint public immutable withInit2[msg.sender] = uint[3](0x01020304, 0x06070809, 0x0b0c0d0e);
    uint public withInit3[uint256]
        = uint[](
