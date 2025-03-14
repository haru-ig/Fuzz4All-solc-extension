pragma solidity ^0.8.0;
contract TestMutator4 {
    uint167 value;
    event NewEvent();
    function set(uint167 _value) public returns (uint167) {
        value += _value;
        emit NewEvent();
        return value;
    }
}
