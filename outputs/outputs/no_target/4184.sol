pragma solidity ^0.8.0;
contract P11{
  uint x;
  function h() internal returns (uint256) { return x; }
}
contract P19{
  function f() internal returns (p10.p10);
}
contract P20{
}
contract P5{
  uint x;
  function h() internal returns (uint) { return x; }
}
contract P6{
  uint x;
  function h() internal returns (uint) { return x; }
  function f() internal returns (uint256 b) { b = 8; }
}
contract P8{
  bytes32 x;
}
contract P99{
  function f() internal returns (bool) { return false; }
  function h() internal returns (uint256) { return 1; }

  function g() public returns (uint256) { return 1; }
  function h() public returns (uint256) {
    f();
    return 1; }
}
contract P23{
  struct S { uint0 x; }
  function p(address _a) public returns (uint256) { return uint8(S(_a).x); }
}
contract P250 {
  function f() public returns (uint0) { return uint160(0); }
}
contract P285 {
  function f() public pure returns (bytes4) { return bytes4(keccak256("f")); }
}
contract P284 {
  function f(uint0 _a) view public returns (uint0) { return uint0(_a); }
  function g(uint0 _a) const view public returns (uint0) { return uint0(_a); }
    function g(uint0 _a) view public returns (uint0) {return uint0(_a); }
}
library P248 {
  struct S { uint0 x; }
  s assembly(S._a):
    let  s;
    s(1);
    s(s);
  function p(address _a) public returns (uint256) { return uint8(S(_a).x); }
}
contract P308 {
  struct S { uint0 x; }
  mapping(uint0 => S) s;
  function p(address _a) public returns (uint256) { return uint8(s[_a].x); }
}
contract P319 {
  struct L { uint160 x; }
  s assembly(L._a):
    let  l;
    l(1);
    l(l);
  function p() public returns (address) { return L(bytes16(_))._a; }
}
contract P329 {
  struct LC { uint160 x; }
  LC a;
  s assembly(LC._a):
    let  l;
    l(1
