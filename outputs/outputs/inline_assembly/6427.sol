pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample39 {
    struct A{
        uint f1;
    }
    function setF1(uint h) public {

        assembly {
            f1 := h
        }
    }
}
