pragma solidity ^0.8.0;
contract Test8 {
    uint32[4][] storageArray;
    function ArrayUint32() public {
        memoryArray[0][0]=3+memoryArray[0][0];
        memoryArray[0][1]=15+memoryArray[0][1];
        memoryArray[0][2]=29+memoryArray[0][2];
        memoryArray[0][3]=47+memoryArray[0][3];
        require(memoryArray[0][3]==47,"");
        require(memoryArray[0][2]==29,"");
        require(memoryArray[0][1]==15,"");
        require(memoryArray[0][0]==3,"");
    }
