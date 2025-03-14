pragma solidity ^0.8.0;
contract Test6_4 {
    uint32[] memoryArray;
    function ArrayUint32() public {
        memoryArray.push(3+memoryArray[0]);
        memoryArray.push(15+memoryArray[1]);
        memoryArray.push(29+memoryArray[2]);
        memoryArray.push(47+memoryArray[3]);
        require(memoryArray[3]==47,"");
        require(memoryArray[2]==29,"");
        require(memoryArray[1]==15,"");
        require(memoryArray[0]==3,"");
    }
}
