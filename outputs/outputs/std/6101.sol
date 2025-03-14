pragma solidity ^0.8.0;
contract TestArrayImmutable {
    struct MemoryEntry { uint _value; uint _data; }
    uint32 length = 0;
    uint immutable array;
    function set(uint32 index, uint value) public {
        require(index < length, "Out of bound!");
        array[index] = value;
    }
    function get(uint32 index) public view returns (uint) {
        require(index < length, "Out of bound!");
        return array[index];
    }
}
