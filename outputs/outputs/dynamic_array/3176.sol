pragma solidity ^0.8.0;
contract BasicArrays {
    function doWork() public {
        uint[] memory memoryArray;
        uint[] memory immutableMemoryArray;
        memoryArray[1] = 0;
        memoryArray.push(1) ;
        memoryArray.length = 3;
        memoryArray[3] = 6;

        immutableMemoryArray.push(1) ;
        immutableMemoryArray.length = 1;
    }
}
