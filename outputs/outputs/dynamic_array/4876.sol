pragma solidity ^0.8.0;
contract Test8 {
    uint32[4][] memoryArray;
    function ArrayUint32() public {
        memoryArray[0][0]=3;
        memoryArray[0][1]=15;
        memoryArray[0][2]=29;
        memoryArray[0][3]=47;
        memoryArray[0][0]=0;
        memoryArray[0][1]=0;
        memoryArray[0][2]=0;
        memoryArray[0][3]=0;
    }
}
