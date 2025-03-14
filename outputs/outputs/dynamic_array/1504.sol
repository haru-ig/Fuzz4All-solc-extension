pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType7 is SemanticsEquivalentEfficientDynamicArrayType6b, SemanticsEfficientDynamicArray {
    uint[] public arrayOfSizesOfSizes;
    function Test() public {
        arrayOfSizesOfSizes.length = 60;
        for (uint i = 0; i < arrayOfSizesOfSizes.length; i++) {
            arrayOfSizesOfSizes[i] = 1;
        }
    }
}
