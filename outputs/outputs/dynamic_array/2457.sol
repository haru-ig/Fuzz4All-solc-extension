pragma solidity ^0.8.0;


contract SemanticEquality_DynamicArrays_f3029a0305037d996ab7a7cb69c501655d6219c7
{
    mapping (uint32 => address) public x;
    function f() public {
        x[1] = 1;
        x[2] = 1;
        x[3] = 3;
        x[1] = x[3];
    }
}
pragma solidity >=0.6.0 <0.8.0;
