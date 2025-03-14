pragma solidity ^0.8.0;
contract Arithmetic {
  function test(uint x, uint y) public pure {
    y = x;
    x = 5 + 2 * (y);
  }
}
