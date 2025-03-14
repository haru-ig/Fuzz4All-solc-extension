pragma solidity ^0.8.0;
contract Mutation3 {
  function getMutant() public view returns (uint256) {
    return 888;
  }
  function myMutant() public returns (uint256) {
    if (getMutant() < 200) _;
    return 888;
  }
}
