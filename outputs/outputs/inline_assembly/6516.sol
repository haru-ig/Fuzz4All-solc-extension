pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample72 {
    uint public b = 1;
    uint public c = 2;
    setter public f = 3;
    function setB(uint value) public {
        b = value;
    }
    set function setC(uint value)  public {
        c = value;
    }
}
