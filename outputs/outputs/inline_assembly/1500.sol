pragma solidity ^0.8.0;
contract Mutant12n7 {
  function get() public pure returns (uint256, uint256, uint256) {
    uint256 x;
    uint256 y;
    uint256 z;
    (x,y,z) = get();
    x = x + 1;
    (x,y,z) = y;
    (a,b,c) = y;
    return (a,b,c);
  }
}
