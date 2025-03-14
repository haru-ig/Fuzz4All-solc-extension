pragma solidity ^0.8.0;
contract Test47 {
    uint[] newBoolArray;
    uint[] newNumberArray;
    uint[] newDynamicArray;
    constructor () public {
        newBoolArray = new uint[](4);
        newNumberArray = new uint[](2);
        newDynamicArray = new uint[](4);
    }
    function Test46() public {
        Test46 s = new Test46();
        s.dynamicArray = new uint[](2);
        for (uint x = 0; x < 4; x++) {
          s.dynamicArray[x] = 1;
        }
        for (uint x = 0; x < 2; x++) {
          s.dynamicArray[s.dynamicArray.length + x] = 5;
        }
    }
    function mutate() public {
        Test46 s = new Test46();
        s.dynamicArray = new uint[](2);
        for (uint x = 0; x < 4; x++) {
          s.dynamicArray[x] = 1;
        }
        for (uint x = 0; x < 2; x++) {
          s.dynamicArray[s.dynamicArray.length + x] = 5;
        }
        s.boolArray = new uint[](3);
        for (uint x = 0; x < 3; x++) {
          s.boolArray[x] = 5;
        }
        s.numberArray = new uint[](2);
        for (uint x = 0; x < 2; x++) {
          s.numberArray[x] = 5;
        }
    }
}
