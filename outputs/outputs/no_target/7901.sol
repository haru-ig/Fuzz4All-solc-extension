pragma solidity ^0.8.0;
contract TestMutator6 {
    uint80 y;
    function set(uint80 _value) public {
        y = _value + y;
    }
    event NewEvent();
    function set2(uint80 _value) public {
        set(_value);
        emit NewEvent();
    }
}
