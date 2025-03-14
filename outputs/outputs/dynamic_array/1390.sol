pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck {
    uint[] array1;
    uint256 private arraySize;

    function mutated() public {
        uint[][] memory nestedArray;
        string[] memory data1;
        array1 = nestedArray;
        data1["0"] = "10";
        data1["1"] = "20";
        data1["2"] = "30";
    }

    function dynamicMemoryAllocationUsed() public {
        array1 = new uint256[](arraySize);
    }

    function dynamicArrayWithOneElement() public {
        array1 = new uint256[](1);
    }

    function dynamicArrayNoFilling() public {
        array1 = new uint256[](arraySize - 1);
    }

    function dynamicArrayReencodingSizeCheck() public {
        uint[][][] memory nestedArray;
        nestedArray = new uint256[][][](1);
        array1 = nestedArray;
    }


    function dynamicArrayOfWrongSize() public {
        array1 = new uint256[0];
    }


}
