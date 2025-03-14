pragma solidity ^0.8.0;
contract TestMutator7 {
    uint256 x;
    function set(uint256 _value) public {
        x = _value + x;
    }
    event NewEvent();
    function set(uint256 _value) public {
        set(_value);
        emit NewEvent();
    }
}
