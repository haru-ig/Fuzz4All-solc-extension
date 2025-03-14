pragma solidity ^0.8.0;
contract K {
    function m(uint256 _x) public pure {
      K k;
      unchecked { k.m(_x); }
    }
    function m1(uint256 _x) public pure {
      K k;
      unchecked {
        uint256 __temp__;
        k.m1(__temp__);
      }
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
