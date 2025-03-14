pragma solidity ^0.8.0;
contract Test6 {
    uint32[4] memoryArray;
    function ArrayUint32() public {
        memoryArray[3] = 3 + uint32(memoryArray[3]);
        memoryArray[2] = 11 + uint32(memoryArray[2]);
        memoryArray[1] = 15 + uint32(memoryArray[1]);
        memoryArray[0] = 19 + uint32(memoryArray[0]);
        require(memoryArray[0] == 8, "");
        require(memoryArray[1] == 11, "");
        require(memoryArray[2] == 15, "");
        require(memoryArray[3] == 19, "");
    }
}
