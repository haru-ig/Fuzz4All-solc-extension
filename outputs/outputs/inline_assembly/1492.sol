pragma solidity ^0.8.0;
contract Mutant12n6 {
  function get() public pure returns (uint256, uint256) {
    uint256 a;
    assembly {

      b := a + 0
    }
    return (a,b);
  }
  function put(uint256 a, uint256 b) public pure {
    return;
  }
}
