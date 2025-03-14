pragma solidity ^0.8.0;
contract HelloWorld {
  function hey() public view returns(string memory) {
    return "Hello";
  }
  uint8 constant X = 16;
  function whatIsX() public pure returns(uint8) {
    return X;
  }
  uint256 constant TWO = 2;
  function whatIsTwo() public pure returns(uint256) {
    return TWO;
  }
}
