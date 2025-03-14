pragma solidity ^0.8.0;
contract S2 {
  uint internal constant s2_internal = 0xfad510000;
  address internal constant s2_external = payable(keccak256(abi.encodePacked(this, "2020")));
  uint public s2;
  function g(uint x) internal returns (uint) { return s2 = s2_internal; }
  function h(uint x) internal returns (uint) {
    return (uint)s2_external;
  }
}

pragma solidity ^0.8.0;
contract S {
  S2 _20;
  S3 _3;
  U _0;
  U _1;
  U _2;
  bool initialized = false;
  function S(address _0, address _20_address) public initializer {
    _0 = U(_0);
    _1 = U(_20_address);
    _2 = U(_20_address);
    _20 = S2(_20_address);
  }
  function initialize() public {
    initialized = true;
  }
  function f() public returns (uint) {
    address _1 = msg.sender;
    uint x = 9 + (uint)(10 + x);
    h(s2);
    a(s3, _1, 5 + 3, uint(false));
    return a(s2, 3, x, uint(1 && 1));
  }
  function a(address x, uint y, uint z, uint q) public returns (uint) {
    if (false) revert();
    uint z2 = z + z;
    return z2 + z2 + (uint)y / (uint)q;
  }
  function c(uint c) public returns (uint) {
    return uint(2);
  }
  function d(uint r) public view returns (uint) {
    if (r > 2)
      { uint t = 12 + uint(10 + a(c(2), 2, -3, uint(1)));
        return (uint)(1);
      }
    return (uint)(2);
  }
  function e(address z) public returns (uint) {
    return (uint)(z);
  }
  function g(uint x) public view returns (uint) {
    uint y = (uint)x - uint(y);
    y = x + (uint)x % 2;
    return y + (uint)y % 2;
  }
  function h(uint x) public {
    uint z = x + (uint)x - 5;
    z = x + (uint)x + 2 % 3;
    return z + (uint)z % 3;
  }
}
contract U { function f() public pure { return
