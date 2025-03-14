pragma solidity ^0.8.0;
contract K {
    function m(uint256 x) public pure {
      byte b;
      b = 200000000;
    }
}
contract R {
  function g() public pure {
    K k;
  }
}
