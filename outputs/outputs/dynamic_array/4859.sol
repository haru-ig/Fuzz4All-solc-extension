pragma solidity ^0.8.0;
contract Test6 {
    function ArrayUint64() public {
        uint64[8] memoryArray;
        memoryArray[3]=memoryArray[3]+9;
        require(memoryArray[4]==8,"");
    }
 }
