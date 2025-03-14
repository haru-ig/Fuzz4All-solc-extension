pragma solidity ^0.8.0;
contract A01 {
  address a;
  uint public b;
  struct M {
    uint8 f8;
  }
}
contract B02 {
  mapping(uint => uint8) a;
}
contract C03 {
  bytes8 a;
}
contract D04 {
  uint16 a;
}
contract E05 {
  mapping(uint => uint8) a;
}
contract F06 {
  uint32 a;
  int32 b;
}
contract G07 {
  uint8 a;
}
contract H08 {
  bytes32 a;
}
contract I09 {
  uint a;
}
contract J10 {
  uint32 a;
}
contract K11 {
  uint8 a;
}
contract L12 {
  struct M {
    uint b;
  }
}
contract M13 {
  struct M8 {
    bytes32 c;
  }
}
contract N14 {
  uint32 a;
  bool b;
  mapping(uint => struct M {
    int8 f8;
    uint d;
  }) c;
}
contract O15 {
  uint8[] a;
}
contract P16 {
  function a(uint8) external returns (uint);
  function b(uint) external;
  function c(address) public view returns (uint8, uint);
  function d(address, bool) public returns (uint, uint);
  function e(bytes32) external view returns (uint32);
  function f(uint) external view returns (uint32);
  function g(address, uint) external view returns (uint, bool);
  function h(address, uint) external view returns (uint8);
  function i(address, uint) public view returns (uint32);
  function j(address, uint) public view returns (uint8);
  function k(uint) public;
  function l(uint) public returns (uint8);
}
contract Q17 {
  uint8 a;
}
contract R18 {
  uint8[] a;
}
contract S19 {
  uint8 e;
  mapping(uint => uint8) d;
}
contract T20 {
  uint8 a;
}
contract U21 {
  uint e;
  mapping(uint => mapping(uint => uint8)) d;
}
contract V22 {
  uint8 a;
  mapping(uint => uint8) d;
}

contract X23 {
  uint a;
  uint b;
  uint8 c;
  uint8 d;
  uint8 e;
  uint8 f;
  uint8 g;
  uint8 h;
  uint8 i;
  uint8 j;
  uint8 k;
  uint8 l;
  uint8 m;
}
contract Y24 {
  uint8 d;
}
contract
