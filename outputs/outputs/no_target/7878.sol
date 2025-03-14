pragma solidity ^0.8.0;
contract TestMutator2 {
    uint40 value;
    function set(uint40 _value) public returns (uint40) {
        value += _value;
        return value;
    }
}
