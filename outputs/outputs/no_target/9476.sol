pragma solidity ^0.8.0;
contract SemanticalEquiv113 {
    uint public _value;
    function set(uint w) public {
        _value = w;
    }
    function f() public view returns (uint) {
        return _value;
    }
}
