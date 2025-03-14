pragma solidity ^0.8.0;
bytes32 s = 'abcdefghijklmnopqrstuvwxyz0123456789';
uint256 l;
function f(uint256 a, uint256 b) public pure returns (bool)
  {
    l = a;
    unchecked {l *= b; }
    return true;
  }
  function g(uint256 a,uint256 b) public pure returns (bool) {
   l = a;
    unchecked {   if ( uint256 i = 1; i < b; i++ ; unchecked {l *= b; } }
    return true;
  }
function h(uint256 a) public pure returns (bool) {
    l = a;
    unchecked { l = a / 5; }
    return true;
  }
