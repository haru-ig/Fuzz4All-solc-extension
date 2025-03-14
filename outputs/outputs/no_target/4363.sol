pragma solidity ^0.8.0;
contract K {
    function m(uint256 x) public pure {
      uint256 i = x;
      i = i - 1048576;
    }
    function g(K k) public pure {
      k.m(0);
    }
}
contract R {
  function g(K k) public pure {
    k.g();
  }
}
contract Foobar is R, K {}
