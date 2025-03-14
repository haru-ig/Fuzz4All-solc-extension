pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample56 {
    struct A{
        uint256 f1;
    }
    struct B{
        uint256 a;
    }
    mapping (address => B) bank;
    constructor (uint h) public {
        bank[msg.sender] = B(h);
    }
}
