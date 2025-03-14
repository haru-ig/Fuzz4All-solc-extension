pragma solidity ^0.8.0;
contract Mutant {
  uint256 constant constant1 = 1.0;
  uint256 constant constant2 = 1.0;
  bytes32 constant constant10Bytes32 = "1234".bytes32;
  uint256 constant constant2Bytes8 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;
  bytes1 constant constant1Bytes32 = '12345678901234567890123456789';

  uint256 constant constant1Mod = (constant1 % 2) * 2;
  uint256 constant constant2Mod = constant2 % 2;

  function f0() public {
    Mutant mutant = Mutant(0);
    uint256 result = mutant.constant1;
    result += mutant.constant1;
    Mutant(0x0);

    bool result1 = mutant.constant1Mod;
    bytes2 result10Bytes32 = mutant.constant10Bytes32;
    uint8 result1Bytes1 = mutant.constant1Bytes32;
    bytes32 result2Bytes32 = mutant.constant2Bytes8;
    uint8 result21Bytes1 = mutant.constant2Mod;
    bytes32 result10Bytes32Mod = mutant.constant10Bytes32 + mutant.constant10Bytes32;
    uint8 result1Mod = (mutant.constant1Mod % 2) * 2;

    uint256 result1Bytes8 = result1Bytes1.bytes1();
    uint256 result1ModBytes2 = constant2 * constant2;
    uint result1ModBytes3 = constant2Bytes8.bytes8();
    uint result2Bytes8 = result21Bytes1.bytes8();

    assert(result == constant1);
  }

  function f1() public {
    uint newConstant2 = (mutant.constant2Mod * 2) % 3;
    Mutant(newConstant2).constant2(newConstant2);
  }

  function f2() public {
    bytes4 newConstant1 = bytes4(0xF56F70FE);
    bytes32 constant1Bytes32 = '12345678901234567890123456789';
    bytes1 constant1Bytes322 = constant1Bytes32.bytes1();
    bytes2 constant1Bytes64 = constant1Bytes32.bytes2();
    bytes32 constant1Bytes324 = constant1Bytes32.bytes3();
    bytes4 constant1Bytes128 = constant1Bytes32.bytes4();
    bytes5 constant1
