pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample67 {
    struct A {
        uint256 x;
    }
    A a;
    for (uint256 i = 0; i < 4; ++i) {
        setFB(i, a.x);
    }
}
