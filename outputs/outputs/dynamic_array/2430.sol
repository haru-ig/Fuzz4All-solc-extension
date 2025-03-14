pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_3501f27552ef18448567681f7ad3c77e798b739a
{
    uint256[2] storage nonMutatedA;
    uint256 storage mutatedA;


    constructor()
    {
        nonMutatedA = [0];
        mutatedA = 1;
    }

    function test()
    {
        mutatedA = 2;
    }
}
contract SemanticEquality_DynamicArrays_63f26271ec30e05ed8f9c0f18628a5c43f6ba486
{
    function test()
    {
        (uint256[2] memory a) = [0];
        (uint256[2,12] memory b) = [0];
    }

    function test2()
    {
        (uint256[2,2] memory a) = [0];
    }
}
