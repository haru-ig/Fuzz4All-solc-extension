pragma solidity ^0.8.0;
contract SemanticSimilar622 {
  uint256 a;
  uint256 internal  b;
  mapping (address=>address)  mapAToB;
  function () external payable {
    uint256 b1 = a++;
    mapAToB[msg.sender] = address(this);
    b += b1;
  }
}
