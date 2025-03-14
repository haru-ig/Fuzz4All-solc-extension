pragma solidity ^0.8.0;
contract SemanticEquality_388b1c40367649a6a514b524cb9875e448a961e6
{
    uint8[] internal x;
    function f() public {
        x[3] = 254;
        x[0] = 1;
        x[0] = x[0] + 1;
    }
}
