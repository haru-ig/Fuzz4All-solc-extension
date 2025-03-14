pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutant9t
{
  uint32 value;
  bytes32 a;
  modifier withData(bytes32 _a)
  {
      a = _a;
      _;
  }
  function f() public withData(0xDEADBEEFBADFA3F00a02977a369135435623EEA2768729FE2dF6CEBE56E5905) returns (uint32) {
  return a.length;
    }
  function g() public view withData(0xDEADBEEFBADFA3F00a02977a369135435623EEA2768729FE2dF6CEBE56E5905) returns (uint32) {
  return a.length;
    }
}
