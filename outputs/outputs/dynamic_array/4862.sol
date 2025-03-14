pragma solidity ^0.8.0;
contract Test6 {
    uint32[4] memoryArray;
    function ArrayUint32() public {
        memoryArray[3]=memoryArray[3]+1;
        memoryArray[0]=memoryArray[1];
        memoryArray[0]=memoryArray[0]+1;
        memoryArray[0]=memoryArray[0]+1;
        memoryArray[0]=memoryArray[0]+1;
        memoryArray[2]=memoryArray[2]+1;
        memoryArray[0]=memoryArray[0]+1;
        delete memoryArray[3];
        delete memoryArray[2];
        memoryArray[0]=memoryArray[2];
        require(memoryArray[0]==4,"");
        require(memoryArray[1]==2, "");
        require(memoryArray[2]==0,"");
        require(memoryArray[3]==2, "");
    }
}
