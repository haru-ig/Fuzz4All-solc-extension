pragma solidity ^0.8.0;
contract Mutate2 {
  bytes32 public newaddressarray1;
  uint public one;
  bytes32 public addend;
  uint public add;
  uint public subtractvalue;
  bytes32 public subtractarray;
  address private addr1;
  bytes32 private bytearray1;

  function test() public pure returns (uint) {

    uint8[] memory test = { 1, 2, 3, 4, 5, 254, 255 };
    uint8[] memory test2 = { 1, 2, 3 };
    uint8[] memory test3 = { 4, 5 };
    bytes32[] memory test4 = { 0xff, 0xff, 0xff };
    bytes32[] memory test5 = { 0x12, 0x13, 0x14 };

    test[0] = 6;
    test2[0] = 6;
    test3[0] = 6;
    test4[0] = 6;

    for (uint i = 0; i < test.length; i++) {
      add = arrayadd(test, test2);

      address t;

      bytes32 b;
      test4[0] = test2[1] + test2[0];
      test4[0] += test2[1];
      test4[0] += test2[0];
      test4[0] += test2[2];
      test4[0] += test2[1];
      test4[0] += test2[2];
      test4[0] += test2[3];
      test4[0] += test2[2];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];
      test4[0] += test2[0];

      for (uint j = 0; j < test.length; ++j) {
        add = arraymultiply(test, test2);
      }
