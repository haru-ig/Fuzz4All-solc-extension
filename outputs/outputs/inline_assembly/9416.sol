pragma solidity ^0.8.0;
contract M {
  constructor(uint256 _u) public {
    u = _u;
  }
  uint256 u;
  function put() public {
    u = 42;
    u = uint32(uint256(42));
    u = (uint32(uint256(42)) & (uint32(new uint8[](40)[42,42,42,42]) + uint32(new uint8(59))));
    M m = new M(uint(u));
    m.put();
  }

  function foo(uint256) public {
    u = 42;
    u = uint32(uint256());
    u = (uint32(uint256())) & (uint32(new uint8[](20)[42,42,42,42]) + uint32(new uint8(87)));
    M m = new M(uint(u));
    m.put();
  }
  function bar(uint8) public pure {
    u = 42;
    u = uint32(uint256());
    u = (uint32(uint256())) & (uint32(new uint8[](20)[42,42,42,42]) + uint32(new uint8(87)));
    M m = new M(uint(u));
    m.put();
  }
}
