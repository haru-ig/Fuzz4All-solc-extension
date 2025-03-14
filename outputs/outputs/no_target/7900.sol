pragma solidity ^0.8.0;
contract TestMutator6 {
    uint x;
    function set(uint _value) public {
        x = _value + x;
    }
    event NewEvent();
    function set2(uint _value) public {
        set(_value);
        emit NewEvent();
    }
}
