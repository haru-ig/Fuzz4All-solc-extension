pragma solidity ^0.8.0;
contract WithReleasingMemory {
    uint8[1] public _uint8Values;
    uint8[1] public _uint8;
    uint8[1] public _uint8ArraysWithNullPointer;
    uint8[1] public _uint8ArraysWithNullAndReallocated;
    mapping(uint256 => uint256) public _uint256;
    function returnsArray(uint8[] memory _memoryToRelease) public returns(uint8[99] memory) {
        uint8[99] memory _999 = _memoryToRelease;
        return _999;
    }
}
