pragma solidity ^0.8.0;
contract Test2 {
    uint256[5] memoryArray;
    constructor() public{
        memoryArray[0] = 0;
    }
    function MemoryArray() public {
        memoryArray[100] = 0;
    }
}
