pragma solidity ^0.8.0;
contract SemanticSimilar10{
  bool isMutated;
  function isMutated() public returns (uint calldata) {isMutated = true; return 0;}
  function fModified() public payable{isMutated = false; require(false);}
}
pragma solidity ^0.8.0;
