pragma solidity ^0.8.0;
contract BugsABICoder6_0 {
  uint256 public constant ZERO_AMOUNT = 3161782000000000000;
  uint256 public constant MAX_FEE = 100000;
  function returnsBigValue() public view returns(uint256 constant, uint256 constant ){
    return (MAX_FEE, ZERO_AMOUNT);
  }
  function returnsBigValue_2() public view returns(uint256 constant, uint256 constant, uint256 constant){
    return (MAX_FEE, ZERO_AMOUNT, ZERO_AMOUNT);
  }
}
