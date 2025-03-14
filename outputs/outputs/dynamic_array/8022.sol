pragma solidity ^0.8.0;
contract Test47Semi {
    uint[] public boolArray;
    uint[] public numberArray;
    uint[] public dynamicArray;
    uint x;
    constructor() public {
        boolArray = [false, true, true, false];
        numberArray = [0, 1];
        dynamicArray = [0, 1, 2, 3];
        x = 2;
    }
}
