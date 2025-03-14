pragma solidity ^0.8.0;
contract Convert {
    uint internal constant BYTE_SIZE = 8000;
    uint internal constant INT_SIZE = 256000;
    uint internal constant RANGE = 4**256;
    constructor(){}

    function toUint256(uint8 source) internal view returns (uint256){
        return uint256(source<<8) + uint256(source>>24);
    }

    function toUint8(uint256 source) internal pure returns(uint8){
        return uint8(source>>24);
    }
    function toUint16(uint256 source) internal pure returns(uint16){
        return uint16(source>>16);
    }

    function toUint8(uint32 source) internal pure returns(uint8){
        return uint8(source>>24);
    }
    function toUint32(uint256 source) internal pure returns(uint32){
        return uint32(source>>24);
    }

    function toUint8(uint64 source) internal pure returns(uint8){
        return uint8(source>>24);
    }

    function toUint8(uint128 source) internal pure returns(uint8){
        return uint8(source>>24);
    }
    function toUint24(uint256 source) internal pure returns(uint) {
        return uint(source>>24);
    }
    function toUint11(uint256 source) internal pure returns(uint) {
        return uint(source>>11);
    }
    function toUint128(uint256 source) internal pure returns(uint) {
        return uint(source >> 128);
    }
}
