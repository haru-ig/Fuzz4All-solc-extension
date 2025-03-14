pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantics_Mods2 {
    uint public x;
    uint public y;
    function set_x(uint in_value1) public {
        x = in_value1;
    }
    function get_x() public view returns (uint) {
        return x * 100;
    }
    function set_y(uint in_value2) public {
        y = in_value2;
    }
    function get_y() public view returns (uint) {
        return (y / 100) + 4;
    }
}
contract SemanticEquality_ArrayMutations35_Semantics_Mods2_Ext {
    uint public x;
    uint public y;
    constructor() public {
        x = 1005;
        y = 100 + 2605;
    }
    modifier set_x_ext(uint in_value1) {
        x = in_value1;
        _;
    }
    modifier set_y_ext(uint in_value2) {
        y = in_value2;
        _;
    }
}
contract SemanticEquality_ArrayMutations35_Semantics_Mods3 {
    uint public x;
    uint public y;
    function set_x(uint in_value1) public {
        x = in_value1;
    }
    function get_x() public view returns (uint) {
        return x + 2625;
    }
    function set_y(uint in_value2) public {
        y = in_value2;
    }
    function get_y() public view returns (uint) {
        return x;
    }
}
contract SemanticEquality_ArrayMutations35_Semantics_Mods3
