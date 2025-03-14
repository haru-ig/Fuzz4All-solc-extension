pragma solidity ^0.8.0;
contract TestMutator4 {
    bytes32 value;
    event NewEvent();
    function set(bytes32 _value) public returns (bytes32) {
        value += _value;
        emit NewEvent();
        return value;
    }
}
