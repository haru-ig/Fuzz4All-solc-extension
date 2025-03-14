pragma solidity ^0.8.0;
contract test57 {
  function test() public returns (uint256) {
    (uint256[] memory _d57, uint256 _x) = new (uint256[](42)) (uint256[](42));
    _d57[54] = _x;
    return (_d57[42 + 1]);
  }
}
