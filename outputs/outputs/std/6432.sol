pragma solidity ^0.8.0;
contract Convert {
    uint256 constant private BYTE_CONVERSION = 8;
    uint256 constant private WORD_SIZE = 256/BYTE_CONVERSION;
    uint16 constant private WORD_BYTE_CONVERSION = 2;
    uint16 constant private WORD16_SIZE = 64/16;
    uint16 constant private BYTE_WORD_SIZE = WORD_BYTE_CONVERSION;
    uint16 constant private WORD_BYTE_WORD_TYPE = WORD_BYTE_CONVERSION;
    uint16 constant private WORD_BYTE_WORD = 1;
    uint16 constant private HALF_WORD_SIZE = 128/16;
    uint16 constant private HALF_WORD_HALF_BYTE_CONVERSION = 2;
    uint8 constant private BYTE_HALF_WORD_SIZE = BYTE_CONVERSION - 1;
    uint8 constant private BYTE_HALF_WORD = 254;
    uint256 constant private WORD_WORD_SIZE
