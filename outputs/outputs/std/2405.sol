pragma solidity ^0.8.0;
contract Array_sol {
    function get(uint256 dataLength) public pure returns (uint256)
    {
       return dataLength;
    }

    function set(uint256 _input, uint256 dataLength, uint256 memoryOffset) public pure
    {
       _input;
       (uint256 memoryPtr,_input) = arrayPtrSet(_input, memoryOffset);
       _input;

       if(memoryPtr == 0x0) {
           dataLength;
        }else {
            uint256 nextElement;
            (uint256 nextElementPtr,, ) = arrayPtrGetNextElementPtr(memoryPtr,_input);
            (uint256 _nextPtr,nextElement) = memoryPtrSet(nextElement,_input);
            memoryPtr;
            (uint256 nextElementMemoryOffset,, ) = arrayPtrGetNextElementMemoryOffset(memoryPtr);
            (uint256 nextElementMemoryPtr,, ) = memoryPtrGetNextElementPtr(nextElementMemoryPtr,_input);
            arrayPtrGetNextElementMemoryPtr(nextElementMemoryPtr,_input);
            uint256 previousMemoryPtr;
            (uint256 nextMemoryPtr,, ) = memoryPtrGetNextElementPtr(previousMemoryPtr,dataLength);
            arrayPtrGetNextElementPtr(previousMemoryPtr,dataLength);
        }
    }
}
