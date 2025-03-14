pragma solidity ^0.8.0;
contract Unsafe3C {
    constructor (uint _value) public {
        _value = _value;
    }
    function set(uint128 _value) public {
        _value = uint128(_value);
    }
}
