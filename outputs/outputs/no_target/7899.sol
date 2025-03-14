pragma solidity ^0.8.0;
contract TestMutator6 {
    uint128 internal x;
    function set(uint128 _value) public internal {
        x += _value;
    }
    event NewEvent();
    function set2(uint128 _value) public {
        set(_value);
        emit NewEvent();
    }
}
