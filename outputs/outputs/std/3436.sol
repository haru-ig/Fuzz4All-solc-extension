pragma solidity ^0.8.0;
import "./ConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutator.sol";
contract TestContract {
  uint x = 3;
  string[] storage strArray = new string[](2);
  uint[] storage numericArray = new uint[](2);
  bytes32 strHash = keccak256("hello");
  uint[2][2] storage matrix = [ [ 5, "hi" ], [ 10, 0xf00d ] ];
  uint[2][2] memory matrix2 = [ [ 16, "hi" ], [ 100, 0xf00d ] ];
  uint[2] memory a;
  uint[2] storage b = [ 3, 4 ];
  uint[3] memory c;
  uint[3] storage d;
  uint[4] memory f;
  uint[4] storage g;
}
function testConvertMutator() public {
  ConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutator convert1;
  convert1.toString(x);
  convert1.toString(5);
  convert1.toString("hello");
  convert1.toUint("174");
  convert1.toUint("5", 16);
  convert1.toUint("hello", 16);
  convert1.toUppercase("Hello");
  convert1.toLowercase("hello");
  ConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutator convert2;
  ConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutator convert3;
  ConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorConvertMutatorGenerateConvertMutator generateConvert;
  generateConvert.toUppercase("Hello");
  convert2.toString(5);
  convert3.toString("2");
  convert2.toString(true);
  convert3.toString(2);
  convert2.toString(uint(true));
  convert3.toString(uint(2));
  convert2.toString(uint[](uint[](uint[](uint[](uint[](uint[](uint[2][2] memory[5] array)) array)) array)) array));
  convert3.toString(keccak256("\0x12"));
  convert2.toString("false");
  convert3.toString("true");
  convert2.toString(uint(false));
  convert3.toString(uint(true));
  convert2.toString(uint[](uint[](uint[](uint[](uint[](uint[](uint[2][2] memory[5] array)) array)) array)) array));
  convert
