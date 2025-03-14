pragma solidity ^0.8.0;
contract ModifyingGeneCount {
  uint8 constant internalGeneLength = 10000;
  uint256[10000][10000] private internalMatrixStorage;
  uint256[10000] private internalMatrix;
  uint8 geneCount = 0;
  function setGeneCount(uint256[10000][10000] _data) public {
    for(uint8 i = 0; i < internalGeneLength; i++) {
      for(uint8 j = 0; j < internalGeneLength; j++) {
        internalMatrixStorage[i][j] = _data[i][j];
      }
    }
    geneCount = internalGeneLength;
  }
  function setGenes(uint256[10000][10000][10000] calldata _data) public {
    for(uint8 i = 0; i < internalGeneLength; i++) {
      for(uint8 j = 0; j < internalGeneLength; j++) {
        for(uint8 m = 0; m < internalGeneLength; m++) {
          internalMatrix[i][j][m] = _data[i][j][m];
        }
      }
    }
  }
}
