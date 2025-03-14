pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations22_Mod_extL6 {
    uint256 public a;
    uint256 public b;
    constructor() public {
        a = 0x1285U;
        b = 0x1278U;
    }
    modifier set_a_ext_modu(uint256 in_a) {
        a = in_a >> 8;
        b = in_a;
        _;
    }
    modifier set_b_ext_modu(uint256 in_b) {
        a = in_b;
        b = in_b >> 8;
        _;
    }
}
