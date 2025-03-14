pragma solidity ^0.8.0;
contract ReturnExample_SemanticEquivalent{
    uint internal value;
    function get() public returns (uint) {
        return value;
    }
    function set(uint _value) public {
        value = _value;
    }
}
