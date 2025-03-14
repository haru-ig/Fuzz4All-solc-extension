pragma solidity ^0.8.0;
contract TestArrayImmutable {
    uint32 length = 0;
    function get(uint32 index) public view returns (uint) {
        require(index < length, "Out of bound!");
        return 0;
    }
    function push(uint32 value) public {
        length++;
    }
}
