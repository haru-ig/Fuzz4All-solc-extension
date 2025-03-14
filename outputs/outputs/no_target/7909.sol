pragma solidity ^0.8.0;
contract TestMutator7 {
    uint80 y;
    function set(uint80 _value) public {
        y = _value - 1;
    }
    event NewEvent();
    function set2(uint80 _value) public {
        set(_value);
        revert(abi.encode(_value, 1));
        emit NewEvent();
    }
}
