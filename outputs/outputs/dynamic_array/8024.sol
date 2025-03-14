pragma solidity ^0.8.0;
contract Test47Semant {
    uint[] public boolArray;
    uint[] public numberArray;
    uint[] public dynamicArray;
    uint x;
    constructor() public {
        x = 2;
    }
    function setBoolArray() public {
        boolArray = [0, 1, 2, 3];
    }
    function setNumberArray() public {
        numberArray = [0, 1];
    }
    function setDynamicArray() public {
        dynamicArray = [0, 1, 2, 3];
    }
}
