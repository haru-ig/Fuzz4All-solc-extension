pragma solidity ^0.8.0;
contract TestMutator7 {
    uint256 z;
    function set(uint256 _value) public {
        z = _value + z / z;
    }
    event NewEvent();
    function set2(uint256 _value) public {
        set(_value);
        emit NewEvent();
    }
}
