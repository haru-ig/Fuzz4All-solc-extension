pragma solidity ^0.8.0;
contract K {
  function m(uint256 _x) public pure {
    unchecked {   }
  }
  function m1(uint256 _x) public pure {
    unchecked {   }
  }
}
contract R {
  function g() public pure {
    K k;
    k.m(42);
    unchecked {
      k.m1(42);
    }
  }
}
