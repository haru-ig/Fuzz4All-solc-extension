pragma solidity ^0.8.0;
contract SemanticallyEquivalent{
  uint256 private internalGeneLength;
  uint256[100][100] internalMatrix;
  uint8 geneCount;
  uint8 internalGeneUsed;
  mapping(address => uint256) private balances;

  constructor() {
   geneCount = 500;
   internalGeneLength = 20;
  }
  function setGeneCount(uint8 _geneCount) public {
    geneCount = _geneCount;
  }
  function setInternalGeneLength(uint8 _geneLength){
    internalGeneLength = _geneLength;
  }


  function setInternalmatrix(uint8 _x, uint8 _y, uint256 _value) public{
    internalMatrix[_x][_y] = _value;
  }
  function setInternalgene(uint8 _gene) public{
    internalGeneUsed = _gene;
  }
  function setGenes(uint256[100][100] calldata _data) public {
    for(uint8 i = 0; i < internalGeneLength; i++) {
      for(uint8 j = 0; j < internalGeneLength; j++) {
        internalMatrix[i][j] = _data[i][j];
      }
    }
  }
  function resetGenes() public {
    geneCount = 0;
