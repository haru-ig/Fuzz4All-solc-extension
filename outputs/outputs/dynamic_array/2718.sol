pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Modifications_Mod_Mod {
    uint public x;
    uint public y;
    uint public z;
    constructor() public {
        x = 0;
        y = 6000 - 4 + 1;
        z = 309;
    }
    function update() public {
        y += 1;
        x -= 1;
    }
}
