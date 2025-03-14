pragma solidity ^0.8.0;
contract Test4 {
    uint32[] memoryArray;
    function ArrayUint322() public {
        uint32[] memory storageArray =  memoryArray;
        storageArray[0]=storageArray[0]+1;
        storageArray[1]=storageArray[1]+3;
        storageArray[2]=storageArray[2]+7;
        storageArray[3]=storageArray[3]+1;
        storageArray[4]=storageArray[4]+8;
        storageArray[5]=storageArray[3]+storageArray[2];
        storageArray[6]=storageArray[4]+storageArray[1];
        storageArray[7]=storageArray[6];
    }
}
