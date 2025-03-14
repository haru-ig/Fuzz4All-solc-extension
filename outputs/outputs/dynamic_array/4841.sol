pragma solidity ^0.8.0;
contract Test2 {
    bool[3] memoryBoolArray;
    function ArrayBools() public {
        memoryBoolArray[0]=memoryBoolArray[0] == true;
        memoryBoolArray[1]=memoryBoolArray[1] && true;
        memoryBoolArray[2]=memoryBoolArray[2] < true;
    }
}
