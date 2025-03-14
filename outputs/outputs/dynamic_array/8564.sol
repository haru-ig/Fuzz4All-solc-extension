pragma solidity ^0.8.0;
contract MutatingCalldataArrays {
    constructor(uint256[5] memory   ) {
        array1 = _array;
    }
    uint256[5] memory array1;
    function mutateArray(uint value) external {
        uint256[2] memory nestedArray;
        nestedArray[1] = value;
        nestedArray[2] = ~nestedArray[1];
        uint[] memory newArray = new uint[](1);
        newArray[0] = ~value;
        array1 = newArray;
        StructWithNestedArrays memory structWithNestedArrays;
        structWithNestedArrays.array1 = nestedArray;
    }
}
