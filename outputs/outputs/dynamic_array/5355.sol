pragma solidity ^0.8.0;
contract Test85DynamicArrayCleanup {
    function f() public pure{
        uint[] memory mem_array = new uint[](10);
        for (uint i = 0; i < mem_array.length; i++){
            mem_array[i] = 0;
        }
        uint[] memory other_memory = new uint[](3);
        for (uint i = 0; i < other_memory.length; i++){
            delete other_memory[i];
        }
    }
}
