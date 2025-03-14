pragma solidity ^0.8.0;
contract StringSize {
  string constant str = "Hello World";
  function len() public pure returns (uint256) {
    return uint256(keccak256(bytes(str)));
  }
}
