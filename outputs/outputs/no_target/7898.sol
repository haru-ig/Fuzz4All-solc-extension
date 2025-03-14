pragma solidity ^0.8.0;
contract TestMutator5 {
    uint128 x;
    function set(uint128 _value) public {
        x = _value + x;
    }
    event NewEvent();
    function set2(uint128 _value) public {
        set(_value);
        emit NewEvent();
    }
}
