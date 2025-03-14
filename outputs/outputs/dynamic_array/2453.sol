pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_e6584648719730d73637711e468c973ec1fd255d
{
    uint32[4] x;
    function f() public {
        x[0] = 1;
        x[1] = 2;
        x[2] = 3;
        x[3] = 4;
        x[0] = x[0] + 1;
    }
}
