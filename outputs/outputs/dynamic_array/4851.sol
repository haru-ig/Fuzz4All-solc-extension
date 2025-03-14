pragma solidity ^0.8.0;
contract Test4 {
    uint32[8] memoryArray;
    constructor() public {
        memoryArray[0]=memoryArray[0]+1;
        memoryArray[1]=memoryArray[1]+3;
        memoryArray[2]=memoryArray[2]+7;
        memoryArray[3]=1;
        memoryArray[4]=memoryArray[4]+8;
        memoryArray[5]=12;
        memoryArray[6]=24;
        memoryArray[7]=36;
    }
    function ArrayUint32() public {
        memoryArray[0]=memoryArray[0]+1;
        memoryArray[1]=memoryArray[1]+3;
        memoryArray[2]=memoryArray[2]+7;
        memoryArray[3]=memoryArray[3]+1;
        memoryArray[4]=memoryArray[4]+8;
        memoryArray[5]=12;
        memoryArray[6]=24;
        memoryArray[7]=36;
    }
}
