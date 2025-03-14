pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantics_Mods {
    uint public x;
    uint public y;
    function set_x(uint in_value) public {
        x = in_value;
    }
    function get_x() public view returns (uint) {
        return x;
    }
    function set_y(uint in_value) public {
        y = in_value;
    }
    function get_y() public view returns (uint) {
        return y;
    }
   function update() public {
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantics_Mods_Ext {
    uint public x;
    uint public y;
    constructor() public {
        x = 1005;
        y = 2625 - 4;
    }
    modifier set_x_ext(uint in_value) {
        x = in_value;
        _;
    }
    modifier set_y_ext(uint in_value) {
        y = in_value;
        _;
    }
    function update() public {
    }
}
