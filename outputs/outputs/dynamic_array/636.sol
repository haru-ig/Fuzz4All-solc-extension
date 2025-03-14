pragma solidity ^0.8.0;
contract test58 {
  function test() public returns (uint256) {
    uint256[45] memory _d58 = new uint256[](42);
    _d58[45] = 0;
    return (_d58[42 + 1]);
  }
}
