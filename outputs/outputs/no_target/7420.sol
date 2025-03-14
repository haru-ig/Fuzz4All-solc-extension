pragma solidity ^0.8.0;
contract Test {
  uint256 public constant constant1 = 218446744073709551615 ;
  function test1(uint256 param) public pure returns(bool) {
    return constant1 == param;
  }
}
