pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_60e85fe91b58d286c824f96304903d09fe2b8075
{
    uint256[5] v1;
        constructor(uint256[6] memory r) public
    {
        v1 = [9, 9, 9, 9, 9, 9];
    }

    function f() public returns (uint256[2] memory retValue) {
        retValue = [1 << [6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 1 << [7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]];
    }
}
