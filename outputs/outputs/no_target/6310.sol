pragma solidity ^0.8.0;
contract A {
    function a(C c) public pure {}
}
contract B is A {
    function a(uint) public pure {}
}
contract C is A {
    function a() public pure returns (uint) { uint x; uint y; }
}
contract D is C {
  function a(uint x, uint y) public pure returns (uint z) { x = uint128(); z = x; }
  function b() public pure returns (uint) { uint x; uint y; x = uint128(0) / y; }
  function c() public pure returns (uint128 z) { z = uint128(0); }

  function d() public pure returns (uint x) { uint y; x = uint128(uint160(-1)) * y; }
  function e() public pure returns (uint y) { uint x; x = uint128(uint160(-1)) * y; }
  function f() public pure returns (uint y) { uint x; x = uint128(uint160(-1)) * y; y = uint(uint128(uint160(-1)))); }
}
contract E is C {
  function a() public pure returns (uint z) {
  z =  0 * uint128(uint160(-1));
  }
  function b() public pure returns (uint z) {
  z =  0 / uint128(uint160(-1));
  }
  function c() public pure returns (uint) {
  return 0u / uint128(uint160(-1));
  }
}
contract F {
  function a() public pure returns (uint z) {

  z =  0 / uint128(uint160(-1));
  }
  function b() public pure returns (uint) {
  return 0u / uint128(uint160(-1));
  }
}

contract H is C {
  function a(uint y) public pure returns (uint z) {
  z = uint128(uint160(-1)) / y;
  }
}
