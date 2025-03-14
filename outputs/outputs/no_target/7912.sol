pragma solidity ^0.8.0;
contract TestMutator8 {
    uint256 x;
    function set(uint256 _value) public {
        x = _value << 1;
    }
    event NewEvent();
    function set2(uint256 _value) public {
        set(_value);
        emit NewEvent();
    }
}
