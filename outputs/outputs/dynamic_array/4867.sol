pragma solidity ^0.8.0;
contract Test6 {
    uint32[4] memoryArray;
    function ArrayUint32() public {
        memoryArray[0]=3+memoryArray[0];
        memoryArray[1]=15+memoryArray[1];
        memoryArray[2]=29+memoryArray[2];
        memoryArray[3]=47+memoryArray[3];
        require(memoryArray[3]==47,"");
        require(memoryArray[2]==29,"");
        require(memoryArray[1]==15,"");
        require(memoryArray[0]==3,"");
    }
}
