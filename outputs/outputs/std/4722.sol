pragma solidity ^0.8.0;
contract C {
  function foobar() public view returns (uint) {
    (uint a, uint b, uint c) = someData;
    return c;
  }
}

contract D {
  function s() public view returns (uint) {}

  function g() public view {
    (uint a, uint b, uint c) = someData;

    if (a + 1 > 5) {
      s();
    }
  }

  function h() public view returns (uint) {
    s();
    return d();
  }
}
