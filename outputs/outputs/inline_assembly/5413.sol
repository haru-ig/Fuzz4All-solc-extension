pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract Mutated {
    byte _byte;
    constructor () public {
        _byte.setValue(17);
    }
    function setValue(byte value) public {
        _byte.setValue(value);
    }
}
