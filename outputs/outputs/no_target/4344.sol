pragma solidity ^0.8.0;
contract K {
    function m(uint256 x) public pure {
      uint256 i = x;
      i = i + 1;
    }
}

contract R {
  function g() public pure {
    K k;
  }
}
