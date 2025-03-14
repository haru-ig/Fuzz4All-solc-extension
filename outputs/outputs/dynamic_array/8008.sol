pragma solidity ^0.8.0;
contract Test47 {
    uint[] private boolArray;
    uint[] private numberArray;
    uint[] private dynamicArray;
    uint constant MAX_BOOL_ARRAY_SIZE = 5;
    uint constant MAX_NUMBER_ARRAY_SIZE = 6;
    uint constant MAX_DYNAMIC_ARRAY_SIZE = 7;
    constructor() public {
        boolArray = new uint[](MAX_BOOL_ARRAY_SIZE);
        numberArray = new uint[](MAX_NUMBER_ARRAY_SIZE);
        dynamicArray = new uint[](MAX_DYNAMIC_ARRAY_SIZE);
    }
}
