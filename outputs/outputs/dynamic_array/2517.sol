pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_ea94576a807d9a28209d5a6de870e708949fe549
{
    uint[] memory a;
    uint b;
    constructor() {
        a[0] = b + 1;
        a[1] = a[0];
    }
    function test() public view returns (uint) {
        return b + a[1];
    }
}
