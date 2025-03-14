pragma solidity ^0.8.0;
contract ExampleStruct4{
    uint256 internal constant field1 = 99;
    uint256 internal constant field2 = 100;
    uint256 internal constant field3 = 101;
    uint256 internal constant field4 = 102;
    uint256 internal constant field5 = 222;
    uint256 internal constant field6 = 333;
    uint256 internal constant field7 = 556;
    uint256 internal constant field8 = 999;
    constructor(){
        uint256[2] memory memoryArray;
        memoryArray[1] = 1;
        memoryArray[0] = 2;
        memoryArray[1] = 3;
        emit(field1, field6);
        emit(field2, field5);
        emit(field3, memoryArray);
        emit(field4, field7);
        emit(field5);
        emit(field6, memoryArray);
    }
}
