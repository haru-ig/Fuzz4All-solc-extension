pragma solidity ^0.8.0;
contract TestMutator4 {
    uint128 value;
    event NewEvent();
    function set(uint128 _value) public returns (uint128) {
        value += _value;
        emit NewEvent();
        return value;
    }
}
