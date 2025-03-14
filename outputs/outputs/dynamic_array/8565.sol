pragma solidity ^0.8.0;
contract Mutator2 {
    constructor() {
        myArray[0] = 4;
        myArray[1] = 5;
        myArray[2] = 9;
        nestedInt[0] = 54;
        nestedInt[1] = 54;
        nestedInt[2] = 54;
    }

    uint256[] myArray;
    uint256[][] nestedInt;

    function mutatorTest() external {}
}
