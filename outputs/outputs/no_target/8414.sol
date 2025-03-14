pragma solidity ^0.8.0;
contract Unsafe2D {
    constructor (address a) {
        a = a;
    }

    function set(uint _value, uint8 _bts) public {
        _value = _value;
        _bts = _bts;
    }
}
