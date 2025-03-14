pragma solidity ^0.8.0;
contract NewTest6 {
    uint32[5] memoryArray;
    function ArrayUint32(){
        for (uint i = 0; i < memoryArray.length; i++) {
            memoryArray[i+3]=3+memoryArray[i+3];
            memoryArray[i+2]=11+memoryArray[i+2];
            memoryArray[i+1]=15+memoryArray[i+1];
            memoryArray[i+0]=19+memoryArray[i+0];
        }
        require(memoryArray[0]==8,"");
        require(memoryArray[1]==11,"");
        require(memoryArray[2]==15,"");
        require(memoryArray[3]==19,"");
        require(memoryArray[4]==23,"");
    }
}
