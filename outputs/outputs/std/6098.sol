pragma solidity ^0.8.0;
contract TestArrayMutable {

    struct MemoryEntry { uint _value; uint _data; }
    uint32 length = 0;
    uint[] array;

    function set(uint32 index, uint value) public {
        require(index < length, "Out of bound!");
        array[index] = value;
    }

    function get(uint32 index) public view returns (uint) {
        require(index < length, "Out of bound!");
        return array[index];
    }
    function push(uint32 value) public {
        array[length++] = value;
    }
}
