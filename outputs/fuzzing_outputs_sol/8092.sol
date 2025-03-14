pragma solidity ^0.8.0;
contract CallContract
{
  function contract() public payable returns (SemanticEquivalentK2, uint256) {
      SemanticEquivalentK2 k2;
      uint256[] memory v = new uint256[](3);
      v[0] = 123;
      v[1] = "hello".length;
      v[2] = uint256(1e10);
      k2 = SemanticEquivalentK2(v);
      return (k2, v[2]);
  }
}
