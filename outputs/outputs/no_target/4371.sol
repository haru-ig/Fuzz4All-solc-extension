pragma solidity ^0.8.0;
contract K {
    uint256 public n;
    function m(uint256 x) public {
      assert(n == 0);
      n = 42;
      assert(n == 42);
      m(x+1);
    }
}
contract R {
  function g() public {
    K k;
    k.m(42);
    k.m(2);
  }
}
