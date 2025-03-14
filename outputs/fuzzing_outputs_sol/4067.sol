pragma solidity ^0.8.0;
contract MixedMutants {
  function myMixedMutantFallback(uint256 _amount) public payable {
    uint256 payable temp = uint256(uint256(88*_amount));
    temp = (uint256(uint256(temp)));
    if (temp > 0) {
      throw;
    }
  }
}
