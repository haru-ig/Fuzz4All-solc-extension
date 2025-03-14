pragma solidity ^0.8.0;
contract Unsafe3B {
    constructor (address a) {
        a = a;
    }
    function set(uint _value, uint128 _bts) public {
        _value = _value << 1;
        _bts = _bts << 1;
    }
}
