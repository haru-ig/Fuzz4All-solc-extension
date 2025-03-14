pragma solidity ^0.8.0;
contract Test2 {
    uint32[8] memoryArray;
    function ArrayUint32() public {
        memoryArray[0]=memoryArray[0]+1;
        memoryArray[1]=memoryArray[1]+3;
        memoryArray[2]=memoryArray[2]+7;
        memoryArray[3]=memoryArray[3]+1;
        memoryArray[4]=memoryArray[4]+8;
        memoryArray[5]=memoryArray[5]-5;
        memoryArray[6]=memoryArray[6]-3;
        memoryArray[7]=memoryArray[7]++;
    }
}
