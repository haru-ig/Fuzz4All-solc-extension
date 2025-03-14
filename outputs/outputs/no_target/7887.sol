pragma solidity ^0.8.0;
contract TestMutator2 {
    uint256 value;
    event NewEvent();
    function set(uint256 _value) public returns (uint256) {
        value += _value;
        emit NewEvent();
        return value;
    }
}
