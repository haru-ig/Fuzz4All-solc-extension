pragma solidity ^0.8.0;
contract Mutant12n7 {
  function get() public pure returns (uint256, uint256, uint256) {
    (uint256 a0, uint256 b0, uint256 c0) = Mutant12n6.get();
    (uint256 a1, uint256 b1, uint256 c1) = (a0,b0,c0);
    (a0,b0,c0) = (a1,b1,c1);
    return (a0, b0, c0);
  }
}
