pragma solidity ^0.8.0;
contract Convert {
  function to_string(uint256 a) internal pure returns (string memory){
    uint256 length = 1;
    while (a!= 0) {
      length++;
      a /= 10;
    }
    a *= 10;
    bool negative = (a < 0);
    a *= (negative? -10 : 10);
    bytes memory b = new bytes(length);
    for (int i = length-1, j = length-1; i >= 0; i--) {
      b[j] = byte
