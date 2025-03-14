pragma solidity ^0.8.0;
contract P9{
  uint internal x;
  uint256 internal y;
  function h() internal returns (uint32) { return x + y; }
}

pragma solidity ^0.6.11;
contract P10{
  function f() public pure { }
}
pragma solidity >=0.6.11 <0.8.0;
contract P11{
  function h(uint x, uint y) internal returns (uint256) { return x + y; }
}
pragma solidity >=0.6.11;
contract P12{
  function g() public pure { }
}
contract P13{
    function a(uint256 x) public pure returns (uint256) {
      b (x);
    }

    function c() public view returns (uint256) {
      a (3);
      d ();
      return g ();
    }

    function d() public {
      uint256 local1 = 3;
      a (local1);
    }
}
pragma solidity >=0.6.11;
contract P14{
  function a(uint256 x) internal pure returns (uint256) {
    b (x);
  }

  function b(uint256 x) internal pure returns (uint256) {
    c (x);
    d (x);
    return a(x) + a(x);
  }

  function c(uint256 x) internal pure returns (uint256){
    assert (x % 2 == 0);
    return x;
  }

  function d(uint256 x) internal pure returns (uint256){
    return x + a(x);
  }

  function e(uint256 x) public pure returns (uint256) {
    return a(x);
  }
}
pragma solidity >=0.6.11;
contract P15{
  uint x = 8;
  function sum(uint y) public pure returns (uint256) {
    return a() + b(y);
  }

  function a() public view returns (uint256) {
    return x + b(x);
  }

  function b(uint256 y) public pure returns (uint256) {
    return e(y + x);
  }

  function e(uint256 y) public pure returns (uint256) {
    return x + x;
  }
}
pragma solidity >=0.6.11;
contract P16{
  function test() public pure returns (uint256) {
    assert(a()!= b());

    if (
