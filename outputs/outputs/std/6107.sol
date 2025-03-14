pragma solidity ^0.8.0;
contract TestArrayMutable {
    uint32 length = 0;
    uint32 private valueToFind;
    function get(uint32 index) public view returns (uint) {
        require(index < length, "Out of bound!");
        return 0;
    }
    function set(uint32 index, uint32 value) public {
        require(index < length, "Out of bound!");
        valueToFind = value;
    }
}
