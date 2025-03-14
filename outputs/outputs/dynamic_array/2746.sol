pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL2 {
    uint public x;
    uint public y;
    uint public z;
    uint public w;
    constructor() public {
        uint in_value;
        in_value = 1005;
        set_x_ext(in_value);
        y = 2625 - 4;
        set_y_ext(y);
        z = 3478;
        set_z_ext(in_value);
    }
    function set_x_ext(uint in_value) set_x_ext(in_value) external {
        x = in_value;
    }
    function set_y_ext(uint in_value) set_x_ext(in_value) external {
        y = in_value;
    }
    function set_z_ext(uint in_value) set_z_ext(in_value) external {
        z = in_value;
    }
}
pragma solidity 0.5.15;
contract SemanticEquality_ArrayMutations35_Semantics {
    SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL1 modifies modifies;
    SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL2 modifies2;
    constructor() public {
        modifies = new SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL1();
        modifies2 = new SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL2();
    }
    function test_ext() external {
        modifies.x = modifies.x + 1;
        modifies.set_x_ext(0);
        modifies.y = modifies.y + modifies.y;
        modifies.set_y_ext(0);
    }

    function test() public {
        modifies.x = modifies.x + 1;
        modifies.x = modifies.x + 1;
        test_ext();
    }

    function test_ext_2() external {
        modifies2.x = modifies2.x + 1;
        modifies2.set_x_ext(0);
        modifies2.w = modifies2.w + modifies2.w;
