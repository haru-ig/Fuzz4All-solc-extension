pragma solidity ^0.8.0;
contract SemanticSimilar500 {
  uint256 data;
  constructor () public {
    data = 5;
  }
  function getData() public { return data; }
  fallback () external {
    uint256 dataStored = data++;
    data = dataStored;
  }
}
