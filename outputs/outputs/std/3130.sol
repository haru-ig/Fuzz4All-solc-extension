pragma solidity ^0.8.0;
contract RandomNumberGenerator {
  function generateRandomNumber(uint start, uint end) public pure returns (uint) {
    return uint(keccak256(abi.encodePacked(start, end)));
  }
}
