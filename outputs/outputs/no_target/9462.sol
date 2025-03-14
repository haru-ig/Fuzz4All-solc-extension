pragma solidity ^0.8.0;
contract SemanticalEquiv95 {
    uint _value;
    function f(address) public returns (bool){
        return _value == address(0);
    }
    function set(uint w) public{
        _value = w;
    }
}
