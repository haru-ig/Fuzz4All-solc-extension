pragma solidity ^0.8.0;
contract ReturnExample_SemanticEquivalent_AncientToSemantic_1_8_0 {

    function set(uint _value) public {
        value = _value;
    }
    function get() public returns (uint) {
        return value;
    }
    uint8 constant ONE = 1;
    struct M1 {uint8 val;function set(uint8 _val) public{val=_val}}
}
contract ReturnExample_SemanticEquivalent_AncientToSemantic_2_4 {
    uint8 constant ONE = 1;
    function set(uint8 _value) public {
    uint8 oldval = ONE;
    uint8 newval = _value;
    (oldval, newval) = (newval, oldval*2);
    }
    function get() public returns (uint8) {
        return ONE;
    }
}
contract ReturnExample_SemanticEquivalent_AncientToSemantic_3_7 {
    function set(uint _value) public {
    uint oldval = 0;
    uint newval = _value;
    (oldval, newval) = (newval, oldval*2);
    }
    function get() public returns (bytes32) {
        bytes32 oldval = 0x;
        bytes32 newval = '0x60';
        return oldval+newval;
    }
}
contract ReturnExample_SemanticEquivalent_AncientToSemantic_4_7
{
    function set(uint _value) public {
        uint oldval = 0;
        uint newval = _value;
        (oldval, newval) = (newval, oldval*2);
    }
    function get() public returns (uint) {
        uint oldval = 0;
        uint newval = 0;
        (oldval, newval) = (newval, oldval*2);
        return newval;
    }
}

function foo() public pure returns (uint8) {
