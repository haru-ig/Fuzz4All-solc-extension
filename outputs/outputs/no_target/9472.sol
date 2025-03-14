pragma solidity ^0.8.0;
contract SemanticalEquiv84_2 {
    uint8 internal _value;
    constructor(uint8 v) public {
        _value = v;
    }
    function f() public view returns (uint8){
        return _value;
    }
}
