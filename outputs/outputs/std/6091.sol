pragma solidity ^0.8.0;
contract TestArray {
    struct MemoryEntry { uint value; uint data; }
    uint[] memory array;
    function set(uint32 index, uint value) public { array[index] = value; }
    function get(uint32 index) public view returns (uint) { return array[index]; }
}
