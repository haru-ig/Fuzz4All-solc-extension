pragma solidity ^0.8.0;
import "./../StructWithNestedArrays.sol";


Contract {
    StructWithNestedArrays initialMemory;
    function set(uint256[3] memory arr) public returns (uint256[3] memory) {
        initialMemory.array1 = arr;
        initialMemory.nestedInts = 0;
        delete initialMemory.array1[0];
    }
}
