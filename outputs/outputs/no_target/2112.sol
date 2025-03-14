pragma solidity ^0.8.0;
contract Modifications2{

  function f(uint256 x, uint256 s) public pure returns (uint256 y){
    return s > 0? s + x : uint256(-1) + (s - x);
  }
}
