pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample67 {
    struct A {
        uint256 f1;
    }
    A a;
    function setFB(uint h, uint f2) public {
        a.f1 = h;
        uint f1v = a.f1;
        a.f1 = h;
        a.f1 = (h * f2);
        uint f1f = a.f1;
    }
}

pragma solidity ^0.8.0;
