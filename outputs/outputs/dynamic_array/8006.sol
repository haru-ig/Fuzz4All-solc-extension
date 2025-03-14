pragma solidity ^0.8.0;
contract Test47 {
    uint[] public boolArray;
    uint[] public numberArray;
    uint[] public dynamicArray;
    constructor() public {
        boolArray = new uint[](4);
        uint[] storage a = boolArray; a[0] = 1;
        uint[] storage b = numberArray; b[0] = 1;
        uint[] storage c = dynamicArray; c[0] = 1;
    }
}
