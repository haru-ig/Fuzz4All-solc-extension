pragma solidity ^0.8.0;
contract Test
{
  uint[1][] public x;
  uint256 constant y = [1][];

  uint[] public arr;
  uint[] public yarr = [1,2];
  uint8[] public arr8;
  uint[] public yarr8 = [1,2];
  int[1] public arr_int;
  int[1] public yarr_int = [1,2];
  uint16[1] public arr_uint;
  uint16[1] public yarr_uint = [1,2];
  uint[1] public arr_uint16;
  uint[1] public yarr_uint16 = [1,2];


  uint8[] public arr88;
  uint8[] public yarr88;
  int8[] public arr8_int;
  int8[] public yarr8_int = [1];


  uint64[] public arr64;
  uint64[] public yarr64 = [1,2,3];
  uint128[] public arr128;
  uint128[] public yarr128 = [1,2,(uint128)(3*(2**128))];
  uint256[] public arr256;
  uint256[] public yarr256 = [1,2,3];
  bytes32[] public arr32;
  bytes32[] public yarr32 = [1,2,3];
  bools[] public boolarr;
  bool256[] public bool256arr;
  bool32[] public bool32arr;
}
