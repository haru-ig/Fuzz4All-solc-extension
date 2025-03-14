pragma solidity ^0.8.0;
contract TestMutator5 {
    uint128 x;
    function set(uint128 _value) public {
        x += _value;
    }
    event NewEvent();
    function set2(uint128 _value) [3] public {
        set(_value);
        emit NewEvent();
        x = _value;
    }
}
