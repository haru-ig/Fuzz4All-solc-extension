pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations45_Modifications_Mod
{
    uint x;
    uint[9] z;
    uint y = 42;
    constructor() public {
        z = new uint[](8);
        for (uint i=0; i < 8; i++) {
          z[i] = 0;
        }
    }
    function add(uint _y) public {
        x += _y;
    }
}
