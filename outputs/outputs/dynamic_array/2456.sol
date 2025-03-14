pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_6aa08a14eb0512376a24785788519ac2a98c9a2f
{
    bytes32 public x;
    function f() public {
        x[0] = bytes32(1);
        x[1] = bytes32(2);
        x[2] = bytes32(3);
        x[3] = bytes32(4);
        x[0] = x[0] + bytes32(1);
    }
}
