pragma solidity ^0.8.0;
contract OptimizelyExample24 {
    OptimizelyExample79 _example79;
    require(OptimizelyExample32.testFunc() == "hello world");
}



pragma solidity ^0.8.0;
library OptimizelyExample87 {
    bytes32 private constant __OPTIMIZELY_EXAMPLES_87_SOLIDITY_ID_ =
        keccak256(abi.encodePacked("OptimizelyTestExample87"));
    bytes32 public immutable EXAMPLES_87_SOLIDITY_ID;
    bytes32 public immutable ID;
    struct Example87 {
        uint8 int8;
        uint16 int16;
        uint128 int256;
        uint32 int32;
        uint256 int256x4;
    }
    uint256 public constant int256x8 = 1234567898765432123456789876543212345678987654321234567898765432123456789876543212345678987654321234567898765432123456789876543212345678987654321234567898765432123456789876543;

    uint8 public constant int8x64 = 0x12;
    uint16 public constant int16x32 = 0x9999;
    uint32 public constant int32x8 = 0x000FFFFF;
    uint256 public constant int256x64 = 0xFFFFFFFFFFFFFFFFFFF;
    uint128 public constant two_to_the_32_bit = 0xFFFFFFFFFFFFFFFFF;

    uint public constant int64x8_2 = 0xFFFFFFFFFFF;
    uint public constant int64x8_4 = 0xF0FFFFF0FF;
    uint public constant int64x8_128 = 0xFFFFFFFFFFFFFFFFF;
    uint public constant int64x128_128_2 = 0xFFFFFFFFFFFFFFFFF;
    uint public constant int64x128_128_4 = 0xFFFFFFFFFFFFFFFFF;
    uint public constant int64x128_128_192 = 0xFFFFFFFFFFFFFFFFF;

    uint public constant int2
