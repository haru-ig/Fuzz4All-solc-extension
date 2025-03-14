pragma solidity ^0.8.0;
contract SemanticalEquiv85 {
    uint _value;
    function f() public pure returns (uint){
        return _value;
    }
    function set(uint w) public {
        _value = w;
    }
}
