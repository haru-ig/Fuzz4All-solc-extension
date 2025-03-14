pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample39 {
    struct A{
        uint f1;
    }
    A a;
    function setF1(uint h) public {
        a.f1 = h;
    }
}
