pragma solidity ^0.8.0;
contract Test7 {
    uint32[4] memoryArray;
    function ArrayUint32() public {
        memoryArray[2]=memoryArray[2]+2;
        memoryArray[3]=memoryArray[3]+3;
        delete memoryArray[0];
        delete memoryArray[1];
        delete memoryArray[2];
        require(memoryArray[0]==14,"");
        require(memoryArray[1]==16,"");
        require(memoryArray[2]==17,"");
        require(memoryArray[3]==18,"");
    }
}
