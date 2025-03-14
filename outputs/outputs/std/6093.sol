pragma solidity ^0.8.0;
contract TestArray {
    uint56[] array;
    function set(uint32 index, uint value) public { array[index] = value; }
    function get(uint32 index) public view returns (uint) { return array[index]; }
}
