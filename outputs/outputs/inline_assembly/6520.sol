pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
    uint a;
    uint b;
    uint c;

    function setABC(uint d) public {
        a = d;
        b = d;
        c = d;
    }
}
