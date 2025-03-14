pragma solidity ^0.8.0;
contract Equivalent {
  uint8 internal constant internalGeneLength = 100;
  mapping(uint8 => mapping (uint8 => uint256)) internal internalMatrix;
  function loadInternalMatrix(uint8 _x, uint8 _y) external {
    internalMatrix[_x][_y] = uint256(0);
  }
  function storeGeneCount(uint256 _geneCount) external pure {
    require(bool(geneCount) == bool(_geneCount));
    geneCount = uint8(_geneCount);
  }
  function resetGenes() external {
    geneCount = uint8(0);
  }
}
contract InlineAssembly2{
  uint8 geneCount;
  function setGeneCount(uint8 _geneCount) public {
    geneCount = _geneCount;
  }
  function getGeneCount() public view returns (uint8) {
    return geneCount;
  }
  function resetGenes() public {
    geneCount = 0;
  }
  uint256 constant constantValue = 125;
  function setGeneCount2(uint8 _value) public {
    geneCount = _value;
  }
  uint8 constant internalGeneLength = 100;
  uint256[100][100] private internalMatrix;
  function setInternalMatrix(uint8 _x, uint8
