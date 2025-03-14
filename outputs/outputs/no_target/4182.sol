pragma solidity ^0.8.0;
contract P11{
  uint x;
  function g() internal view returns (uint256) { return x; }
}
contract P12{
}
contract P13{
  bool x;
  function h() internal { x; }
}
contract P14{
  string x;
  function g() internal pure returns(bool b) { return x; }
}
contract P15{
  uint x;
  function g() internal view returns (uint256 x) { return x; }
}
contract P16{
  uint x;
  function g() internal view returns (uint256) { return x; }
}
contract P17{
  uint x;
  function g() internal view returns (uint256) { return 2**268 * (x/256 - 1); }
}
contract P18{
  uint x;
  function f() internal pure returns(uint256 z) { return (x * 256 + 1024)**0.5; }
}
contract P19{
  uint x;
  function g() internal pure returns(uint256 z) { return 2**268 * (x + z)**-0.5; }
}
contract P20{
  string x;
  function f() internal pure returns(uint256 y) { return (x * 256 + 1024)**0.5; }
}
contract P21{
  string x;
  function f() internal pure returns(uint256 y) { return (4200000000000000000000000000000000000000000000000000000000000000 / 1024)**0.5; }
}
contract P22{
  uint x;
  function h() internal pure returns (uint8) { return (256 + x); }
}
contract P23{
  string x;
  function h() internal pure returns(bytes1 c) { return bytes(c); }
}
contract P24{
  uint x;
  function h() internal pure returns (bytes1 c) { return bytes1(c); }
}
contract P25{
  uint x;
  function h() internal pure returns (bytes1 c) { return bytes1(256 + x); }
}
contract P26{
  uint x;
  function h() internal pure returns (bytes1 c) { return bytes1(bytes1(x)); }
}
contract P27{
  uint x;
  bool y;
  function h() internal pure returns (bytes1 c) { if (y) return bytes1(x); }
