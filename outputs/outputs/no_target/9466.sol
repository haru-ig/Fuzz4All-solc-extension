pragma solidity ^0.8.0;
contract SemanticalEquiv {
    uint _value;
    function f() public returns (uint){
      return _value;
    }
    function set(uint w) public {
        _value = w;
    }
}
