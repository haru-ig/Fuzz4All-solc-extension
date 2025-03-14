pragma solidity ^0.8.0;
contract Unsafe4B {
    function set(uint120 _value) public {
        _value = uint120(_value);
    }
    function setTwo(address payable _value) public {
        _value = payable(_value);
    }
    function setThree(string _value) public {
        _value = string(_value);
    }
    function setFour(uint _value) public {
        _value = uint(_value);
    }
}
