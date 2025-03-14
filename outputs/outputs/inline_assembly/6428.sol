pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample40 {
    struct A {
        uint f1;
        uint f2;
    }
    function setF1(uint v) public {
        (uint f1, ) = getA();

        A localA = getA();
        a.f1 = localA.f1 + localA.f2;
    }
}
