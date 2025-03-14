pragma solidity ^0.8.0;
contract test57 {
  function test() public view returns (uint256) {
    uint256[] memory _d57 = new uint256[](42);
    _d57[45] = 0;
    _d57;
    return (_d57[42 + 1]);
  }
}

pragma solidity ^0.8.0;
contract test58 {
  constructor () {
    uint256[] storage _d58 = new uint256[](42);
    _d58[45] = 0;
    uint256 myvar = _d58[42 + 1];
  }
  function get() public pure returns (uint256) {
    uint256[] memory _d58 = new uint256[](42);
    _d58[45] = 0;
    return (_d58[42 + 1]);
  }
}
