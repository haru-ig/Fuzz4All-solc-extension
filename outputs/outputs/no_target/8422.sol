pragma solidity ^0.8.0;
contract Unsafe2C {
    constructor (address a) {
        a = a;
    }
    function set(uint128 _value, uint _bts) public {
        _bts = _bts;
        _value = _value;
    }
}
