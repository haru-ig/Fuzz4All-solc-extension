pragma solidity ^0.8.0;
contract Test5 {
    uint32[8] memoryArray;
    function ArrayUint32() public {
        memoryArray[3]=memoryArray[3]+9;
        require(memoryArray[4]==8,"");
    }
}
