pragma solidity ^0.8.0;
contract ReturnExample {
    uint public value;
    function add(uint _value) public returns(uint) {
        return _value + value;
    }
    function set(uint _value) public {
        value = _value;
    }
}
