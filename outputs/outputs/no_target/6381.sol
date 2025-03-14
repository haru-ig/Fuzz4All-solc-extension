pragma solidity ^0.8.0;
contract semanticC {
  function f(uint8 a) public returns (uint256 h) {
     h = (a > 1)? 2 % 2
           : 1;
  }
}
