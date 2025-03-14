pragma solidity ^0.8.0;
contract Test2 {
    uint8[5] memoryArray;
    function ArrayUint8() public {
        memoryArray[0]=memoryArray[0]+48;
        memoryArray[1]=memoryArray[1]+7;
        memoryArray[2]=memoryArray[2]+35;
        memoryArray[3]=memoryArray[3]-76;
        memoryArray[4]=memoryArray[4]+73;
    }
}
