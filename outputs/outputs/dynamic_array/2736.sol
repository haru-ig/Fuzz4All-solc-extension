pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations35_Semantics_Mods_Ext2 {
        function zero_init() public {
            uint xzero_init = 0;
        }
    }
    contract SemanticEquality_ArrayMutations35_Semantics_Mods_Ext3 {
        function zero_init() public {
            uint yzero_init = 0;
        }
    }
    contract SemanticEquality_ArrayMutations35_Semantics_Mods_Ext4 {
        constructor() public {
            uint zero_init = 0;
        }
        modifier zero_init_ext {
            zero_init = 0;
            _;
        }
    }
    contract SemanticEquality_ArrayMutations35_Semantics_Mods_Ext5 {
        constructor(uint in_xinit, uint in_yinit) public {
        x = in_xinit;
        y = in_yinit;
        }
    }
    contract SemanticEquality_ArrayMutations35_Semantics_Mods_Ext6 {
        uint public x;
        uint public y;
        constructor(uint in_xinit, uint in_yinit) public {
            x = in_xinit;
            y = in_yinit;
        }
    }
    pragma solidity ^0.8.0;
    contract SemanticEquality_ArrayMutations35_Semantics_Mods_Ext7 {
        constructor(uint in_xinit) public {
            x = in_xinit;
        }
    }
    contract SemanticEquality_ArrayMutations35_Semantics_Mods_Ext8 {
        constructor(uint in_yinit) public {
            y = in_yinit;
        }
    }
    contract SemanticEquality_ArrayMutations35_Semantics_Mods_Ext9 {
        constructor() public {
        }
        modifier zero_init_
