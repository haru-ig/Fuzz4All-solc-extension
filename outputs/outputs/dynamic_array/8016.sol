pragma solidity ^0.8.0;
contract Test46 {

    uint[] public array = [0, 1, 2, 3];
    uint[] public boolArray = [0,1];
    uint[] public numberArray = [0,1];
    uint[] public dynamicArray = [0,1,2,3];
    uint public x;
    constructor() public {

        array[2] = x;

        boolArray[2] = x / x < 0.5 ;

    }
}
