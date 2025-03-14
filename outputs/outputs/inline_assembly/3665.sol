pragma solidity ^0.8.0;
contract MutateGeneCount {
  uint256 constant GENECOUNT = 800;
  uint256 private _geneCount;
  bool public immutable flag = false;
  uint256 constant constantValue = 125;

  event AddGenes(uint256 addedCount);

  function getGeneCount() public view returns (uint256) {
    return _geneCount;
  }
  function changeGeneCount(uint256 _newGenes) public {
    _geneCount = _newGenes;
  }
  function addGenes(uint256 _genes) public {
    _geneCount = _geneCount + GENECOUNT + _genes;
    flag = true;
  }
  function removeGenes(uint256 countToRemove) public {
    require(_geneCount > 0, 'Gene count is less than 0');
    _geneCount = _geneCount - GENECOUNT - countToRemove;
    flag = true;
  }
}
