pragma solidity ^0.8.0;
contract TestArrayMutable {
    bool private initialized;
    uint32 length = 0;
    uint32[] private mutable array = new uint32[](11);
    function set(uint32 index, uint32 value) public {
        array[index] = value;
    }
    function get(uint32 index) public view returns (uint) {
        require(index < length, "Out of bound!");
        return array[index];

    }
    function push(uint value) public {
        length++;
    }
}
