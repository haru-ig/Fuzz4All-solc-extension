pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample52 {
    struct A {
        uint h;
        uint f2;
    }
    A a;
    bytes memory c;
    bytes memory b;
    uint256 public h;
    constructor (address sender, bytes memory _c, bytes memory _b) public {
        h = 1;
        a.h = 1;
        c.length = 0;

        assembly {
        let f := 0x40
        mstore(a)
        mstore(b)
        mstore(c, add(f, 0x0))
        mstore(0x20, add(f, 0x8))
        mstore(0x30, add(f, 0x10))
        mstore(0x40, add(f, 0x18))
        mstore(0x50, add(f, 0x20))
        mstore(0x60, add(f, 0x28))
        mstore(0x70, add(f, 0x30))
        }

        for (uint i = 0; i < c.length; i++) {
            h = 0x10000000000000000007
