pragma solidity ^0.8.0;
contract Test {
  uint256[] public constant arrays1;
  function test2() public pure returns(bool) {
    return arrays1.length == 0 && arrays1.length == 2;
  }
}


pragma solidity ^0.8.0;
contract Test {
  uint256 public constant constant1 = (uint256(1) << 80);
  uint256 public constant constant2 = 0.5;
  function test3() public pure returns(bool) {
    return constant2 < constant1;
  }
}
