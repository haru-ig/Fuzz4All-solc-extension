pragma solidity ^0.8.0;
interface SemanticEquality_ArrayMutations35_Mod_extI3 {
    function set_x_ext(uint in_value) external;
    function set_y_ext(uint in_value) external;
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Mod_extL4 {
    uint public x;
    uint public y;
    constructor() public {
        x = 1285;
        y = 1278;
    }
    modifier set_x_ext(uint in_value) {
        x = in_value;
        y = in_value >> 8;
        _;
    }
    modifier set_y_ext(uint in_value) {
        x = in_value >> 8;
        y = in_value;
        _;
    }
}
pragma solidity ^0.8.0;
interface SemanticEquality_ArrayMutations35_Mod_extI4 {
    function set_x_ext(uint in_value) external;
    function set_y_ext(uint in_value) external;
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Mod_extL5 {
    uint public x;
    uint public y;
    constructor() public {
        x = 1285;
        y = 1278;
    }
    modifier set_x_ext(uint in_value) {
        x = in_value >> 8;
        y = in_value >> 8;
        _;
    }
    modifier set_y_ext(uint in_value) {
        x = in_value;
        y = in_value;
        _;
    }
}
pragma solidity ^0.8.0;
interface SemanticEquality_ArrayMutations35_Mod_extI5 {
    function set_x_ext(uint in_value) external;
    function set_y_ext(uint in_value) external;
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Mod_extL6 {
    uint public x;
    uint public y;
    constructor() public {
        x = 128
