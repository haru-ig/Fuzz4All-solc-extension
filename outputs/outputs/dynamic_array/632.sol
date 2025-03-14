pragma solidity ^0.8.0;
contract test58 {
  function test() public returns (uint256) {
    uint256[] memory _d57 = new uint256[](42);
    _d57[45] = 0;
    return (_d57[42 - 1]!= 0);
  }
}
