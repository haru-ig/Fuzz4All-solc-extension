pragma solidity ^0.8.0;
contract K {
    function m(uint256 x) public pure {
      K k;
      k.m(x);
    }
}
contract R {
  function g() public pure {
    K k;
    k.m(42);
  }
}
