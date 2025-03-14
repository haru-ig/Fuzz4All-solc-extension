pragma solidity ^0.8.0;
contract SemanticalEquiv84 {
    uint _value;
    function f() public returns (uint32){
        return _value;
    }
    function set(uint32 w) public{
        _value = w;
    }
}
