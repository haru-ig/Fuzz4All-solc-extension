pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_28f71902c9e7580325e928f74d7bbad1dc5699e0
{
    uint16[8] x;
    function f() public {
        x[0] = 1;
        x[1] = 2;
        x[2] = 3;
        x[3] = 4;
        x[4] = 5;
        x[5] = 6;
        x[6] = 7;
        x[0] = x[0] + 1;
    }
}
