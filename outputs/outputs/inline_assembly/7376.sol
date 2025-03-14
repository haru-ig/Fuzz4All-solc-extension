pragma solidity ^0.8.0;
contract Equivalent_assembly_2 {
  struct Struct{
    uint constant constant1 = 10;
    uint constant constant2 = 11;
    uint constant constant3 = 12;
    uint constant constant4 = 13;
  }

  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
  uint constant constant4 = 13;

  constructor() {
    uint a = 2 * constant1;
    uint b = a * constant1;
    uint c = constant1 / (constant2 / 2);
    uint d = constant1 * constant1;
  }
}


  uint constant constant1 = 10;
  uint constant constant2 = 11;
  uint constant constant3 = 12;
  uint constant constant4 = 13;

  constructor() {
    uint a = 2 * constant1;
    uint b = 3 * constant2;
    uint c = 15 / (8 ^ (3 ^ 3));
    uint d = constant2 * constant2;
  }
}
