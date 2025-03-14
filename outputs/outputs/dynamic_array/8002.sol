pragma solidity ^0.8.0;
contract Test46 {
    uint[] public boolArray;
    uint[] public numberArray;
    uint[] public dynamicArray;
    constructor() public {
        boolArray = boolArray.slice(0, 1);
        boolArray = boolArray.append(1);
        numberArray = numberArray.slice(1, 0);
        numberArray = numberArray.append(0);
        dynamicArray = new uint[](2);
    }
}
