pragma solidity ^0.8.0;
contract Mutated {
    constructor () public { }


    function set (uint16 _value) public {
        if (_value == (uint16)0) { revert(); }
    }
}
