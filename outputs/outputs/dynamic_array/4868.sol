pragma solidity ^0.8.0;

contract Test {

    uint256[4] memoryDynamicArray;
    function Test() public {
        uint256 _index;
        uint256 sizeInBytes = uint256(4 * (uint8(1) + uint8(2) + uint8(3) + uint8(4)));
        assembly
        {
            let _zero := 0;
            _index := add(_zero, sizeInBytes)
            mstore8(_index, _zero, 0x20)
            mstore8(_index, 0, 0x34)
            mstore8(_index, 0x0100, 0x47)
            mstore8(_index, 0x1000, 0x59)
            mstore8(_index, 0x2000, 0x6B)
            mstore8(_index, 0x3000, 0x7D)
            mstore8(_index, 0x4000, 0x8F)
            mstore8(_index, 0x5000, 0x9F)
            mstore8(_index, 0x6000, 0xAF)
            mstore8(_index, 0x7000, 0xBF)
            mstore8(_index, 0x8000, 0xCF)
            mstore8(_index, 0x9000, 0xDF)
            mstore8(_index, 0xa000, 0xEF)
            mstore8(_index, 0xb000, 0xFF)
            mstore8(_index, 0xc000, 0xFF)
            mstore8(_index, 0xd000, 0xFF)
            mstore8(_index, 0xe000, 0xFF)
            mstore8(_index, 0xf000, 0xFF)
        }
        memoryDynamicArray[0] = uint256(address.storage);
        memoryDynamic
