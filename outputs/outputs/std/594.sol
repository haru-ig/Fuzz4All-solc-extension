pragma solidity ^0.8.0;
contract HelloWorld {
  uint256 constant X = 30;
  uint256 constant TWO = 31;
  function mod(uint256 y) private pure returns(uint256) {
    return X + TWO;
  }
  uint8 constant Y = 33;
  function mod(uint8 y) private pure returns(uint8) {
    return TWO + Y;
  }
}

pragma solidity ^0.8.0;
contract HelloWorld {
  function f(string memory) public pure returns (string memory) {
    return "";
  }
}
