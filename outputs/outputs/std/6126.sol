pragma solidity ^0.8.0;
library Array {
    using Utils for *;
    function min(uint32[] memory arr) public returns (uint32) {
        return arr.min();
    }
    function max(uint32[] memory arr) public returns (uint32) {
        return arr.max();
    }
    function sum(uint32[] memory arr) public returns (uint32) {
        uint32 result = 0;
        for (uint32 index = 0; index < arr.length; ++index) {
            result += arr[index];
        }
        return result;
    }
    function getArray(address addr, uint32 idx) public view returns (uint32) {
        require(idx < storageSize(addr));
        return addr.getArrayUInt(idx);
    }
    function setArray(address addr, uint32 idx, uint32 value) public view returns (uint32) {
        addr.setArrayUInt(idx, value);
        return value;
    }
    function sortArray(address addrStr) public view returns (uint32[]) {
        return addrStr.sortArrayUInt32(storageSize(addrStr), address(this));
    }
    function storageSize(address addr) public view returns (uint32) {
        uint32 sz = addr.getArrayUInt(ARRAY_LENGTH_INDEX);
        require(sz > ARRAY_LENGTH_INDEX, "Unable to get storage size");
        return sz;
    }
}
