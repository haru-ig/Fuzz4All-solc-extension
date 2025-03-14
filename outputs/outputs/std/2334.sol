pragma solidity ^0.8.0;
pragma version ^0.5.11;
pragma experimental ABIEncoderV2;

contract MyContract
{
    uint8 public constant uint8_value_1 = 1;
    bytes public constant bytes_string_1 = "Hello!";
    bytes1 public constant bytes1_1 = 1;
    bytes2 public constant bytes2_1 = 2 ** uint8_value_1;
    bytes3 public constant bytes3_1 = "Hello world!";
    bytes4 public constant bytes4_1 = 2 ** uint8_value_1;
    bytes5 public constant bytes5_1 = 2 ** uint16_value_1;
    bytes6 public constant bytes6_1 = 2 ** uint32_value_1;
    bytes7 public constant bytes7_1 = 2 ** uint64_value_1;
    bytes8 public constant bytes8_1 = 2 ** uint8_value_1;
    bytes9 public constant bytes9_1 = "Hello world!";
    bytes10 public constant bytes10_1 = bytes_string_1;
    bytes11 public constant bytes11_1 = "Hello world!";
    bytes12 public constant bytes12_1 = "Hello world!";
    bytes13 public constant bytes13_1 = "Hello world!";
    bytes14 public constant bytes14_1 = bytes1_1;
    function multiply(bytes1) pure public returns (bytes1) {return false;}
    function div_multiply(uint8, bytes8) pure public returns (bytes8) {return false;}
    function div_add(uint8, bytes8) pure public returns (bytes8) {return false;}
    function div_sub(uint8, bytes8) pure public returns (bytes8) {return false;}
    function shift_left(bytes8, bytes8) pure public returns (bytes8) {return false;}
    function shift_right(bytes10, bytes8) pure public returns (bytes8) {return false;}
    function concat(bytes15, bytes8, bytes8) pure public returns (bytes8) {return bytes8(0);}
}
