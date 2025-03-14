pragma solidity ^0.8.0;
contract Mutations {
    int32 _number;

    function __init__() {
        _number = 42;
    }

    function changeNumber(int32 newValue) public {
        _number = newValue;
    }

    function checkNumber() public returns (int) {
        return _number;
    }
}
