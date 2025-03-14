pragma solidity ^0.8.0;
contract P4 {
  uint256 internal constant p4_internal = 0xb5ad000000000000000000000000000000000;
  uint256 public p4;
  function h(bool x) internal returns (uint256) { if (x) return p4_internal; }
}
contract P5 {
  uint256 internal constant p5_internal = 0xb5ad000000000000000000000000000000000000000;
  uint256 internal constant p5_internal_2 = 0xffffffff000000000000000;
  uint256 public p5;
  function h(uint[] memory b) internal returns (uint256) {
    for (uint i; i < b.length; i ++) {
      if (b[i] >= 0 || b[i] > type(uint160).max) revert ();
    }
    b.length = (b.length - 3) / 2;
    b[b.length] = p5_internal_2 | p5_internal;
    b[b.length + 1] = p5_internal;
    b[b.length + 2] = p5_internal_2;
    return b[0];
  }
  function h(uint8[]; memory) internal returns (uint) { return p5_internal_2; }
  function h(uint16;) internal returns (uint) { return p5_internal_2; }
  function h(uint248;) internal returns (uint) { return p5_internal_2; }
  function h(uint256) internal returns (uint) { return p5_internal_2; }
}
contract P6 {
  function h() internal returns (uint) { return (2 ** 256); }
}
contract P7 {
  function h() internal returns (uint256) { return 2 ** 256; }
  function h() internal returns (uint) { return 2 ** 48; }
}
contract P8 {
  uint256 public constant z = type(uint256).max - 1;
  uint internal x;
  uint256 internal y;
  function f() internal returns (uint256) {
    if (y + 3 >= type(uint256).max - 2) {
      x = uint160(uint210(y));
    }
    return
