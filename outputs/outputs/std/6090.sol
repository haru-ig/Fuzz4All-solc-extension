pragma solidity ^0.8.0;
contract TestArrayMutator {
    struct MemoryEntry { uint value; uint data; }
    uint[] oldArray;
    uint[] newArray;
    function get(uint32 index) public view returns (uint) {
        return array[index];
    }
    function set(uint32 index, uint value) public {
        oldArray[index] = array[index];
        array[index] = value;
    }
}
