pragma solidity ^0.8.0;
contract SemanticEquivS84{
    uint _value;
    function set(uint w) public {
        _value += w;
    }
    function f() public returns (uint){
        _value = uint(_value + 1);
        return _value;
    }
}
