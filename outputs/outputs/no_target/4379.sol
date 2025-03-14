pragma solidity ^0.8.0;
contract K2 {
    function m(uint256 x) public pure {
      K k;
      unchecked { k.m(x); k.m(x); }
    }
}
contract R2 {
  function g() public pure {
    K k;
    k.m(42);
    unchecked { k.m(42); k.m(42); }
  }
}
