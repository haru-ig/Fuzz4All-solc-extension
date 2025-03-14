pragma solidity ^0.8.0;
contract TestMutator4 {
    uint40 value;
    event NewEvent();
    function set(uint40 _value) public returns (uint40) {
        value = _value;
        emit NewEvent();
        return value;
    }
}
