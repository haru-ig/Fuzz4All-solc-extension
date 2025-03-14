pragma solidity ^0.8.0;
contract Test46Mutate {
    uint[] public boolArray;
    uint[] public numberArray;
    uint[] public dynamicArray;
    constructor() public {
        boolArray.length++;
        boolArray.length++;
        boolArray[boolArray.length-1]++;
        boolArray.length++;
        boolArray[boolArray.length-1]++;
    }
}
