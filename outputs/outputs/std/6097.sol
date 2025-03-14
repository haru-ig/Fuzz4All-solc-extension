pragma solidity ^0.8.0;
contract TestArray {
    struct MemoryEntry { uint value; uint data; }
    uint[] array;
    function add(uint index, uint value, uint d) public { array[index] += value+d; }
    function sub(uint index, uint value, uint d) public { array[index] -= value-d; }
    function mul(uint index, uint value, uint d) public { array[index] *= value-d; }
    function div(uint index, uint value, uint d) public { array[index] /= value/d; }
    function set(uint32 index, uint value, uint d) public { array[index] = value+d; }
    function get(uint32 index) public view returns (uint) { return array[index]; }
}
