pragma solidity ^0.8.0;
contract SemanticEquality_MutableDynamicArrays_f31477ef2831c93828e2be5bffc694ef
{
    uint[] dynamicArray;
    uint[] dynamicArray2;

    function initialize() public
    {
        dynamicArray[0] = 0;
        dynamicArray2[0] = 0;

        dynamicArray = [3, 43, 12, 127, 2, 1];
        dynamicArray2 = [4, 19, 18, 17, 18, 30];
    }
}
