pragma solidity ^0.8.0;
contract Test47Mut2 {
    uint[] public boolArray;
    uint internal intArray;
    uint[] public numberArray;
    uint[] public dynamicArray;
    uint internal integer;
    uint x;
    mapping(uint => uint) internal numberMap;
    uint y;

    constructor() public {
        intArray = 12;
        boolArray = [0, 1, 2, 3];
        numberArray = [0, 1];
        dynamicArray = [0, 1, 2, 3];
        integer = 25;
        x = 2;
        y = 1;
        numberMap[5] = 0;
    }

    function getNumber() public view returns(uint) {
        return numberMap[5];
    }
}
