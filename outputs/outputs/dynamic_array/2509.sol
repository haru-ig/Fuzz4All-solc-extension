pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_9ef7464f6f9c1a67a8b4f43b27cd1f1cb4c2d366
{
    function foo() public returns (uint8[]) {
        uint8[] memory _arr  = new uint8[](2);
        _arr[0] =  0x1;
        _arr[1] =  0x2;
        return _arr;
    }
}
