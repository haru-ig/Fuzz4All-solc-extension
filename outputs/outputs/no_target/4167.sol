pragma solidity ^0.8.0;
contract P8{
  uint256 internal x;
  uint256 internal y;
  uint256 internal z;
  function f() private {
    x = 2147483647;
    if(x < y)
    z =  z/x;
    else
    if(y < x)
    x = x/y;
    else
    x = x/y;
  }
  function h() internal returns (uint256) {
    (x,y) = safeMult(x,y);
  }
  function safeMult(uint256 x, uint256 y) private returns (uint256) {
    if (x*y/x < y) { _overflow(x,y); }
    else { return (x*y)/x; }
  }
  function _overflow(uint256 _x, uint256 _y) private { assert(false); }
}
