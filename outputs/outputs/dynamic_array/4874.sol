pragma solidity ^0.8.0;
contract Test2 {
    uint[4] memoryArray;
    function ArrayUint4() public {
        memoryArray[0]=3.3+memoryArray[0];
        memoryArray[1]=15.9+memoryArray[1];
        memoryArray[2]=29.3+memoryArray[2];
        memoryArray[3]=49.3+memoryArray[3];
        require(memoryArray[3]==49.3,"");
        require(memoryArray[2]==29.3,"");
        require(memoryArray[1]==15.9,"");
        require(memoryArray[0]==3.3,"");
    }
}
