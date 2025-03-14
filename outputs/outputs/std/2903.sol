pragma solidity ^0.8.0;
contract ArrayOperations {
constructor() {
    memoryArray[0] = 1;
    memoryArray[1] = 15;
    memoryArray[3] = 160;
    memoryArray[2] = 1.5;
    memoryArray[3] = 2.0;
    memoryArray[4] = 0xFF;
    memoryArray[4294967295] = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    array[1] = 0x00;
    array[2] = 0xFF;
    array[3] = 0xFFFF;
    array[4] = 0xFFFFFFFF;
}
}
