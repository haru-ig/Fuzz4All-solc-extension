pragma solidity ^0.8.0;
contract C {
  uint[10][10] private _g;
  uint8[10] public g;
}
contract D {
  uint[20][10] public f;
  uint64[20] public g;
  uint8[10] public h;
}
contract E {
  mapping(uint => uint8) public g;
  struct W {
    uint x;
  }
  W[] public h;
}
