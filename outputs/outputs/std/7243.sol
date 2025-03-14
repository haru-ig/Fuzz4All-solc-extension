pragma solidity ^0.8.0;
contract Math {
  function test(uint x, uint y) public pure returns (uint){
    y = 5 * x;
    x = 5 * y;
    return x;
  }
}
