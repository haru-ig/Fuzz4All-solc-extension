pragma solidity ^0.8.0;
contract MutateOldFunction {
    uint256 constant constantValue = 3;
    uint256 private geneCount;
    uint256 private g;

    function geneCountGet() public view returns (GeneCount memory _geneCount) {
        return _geneCount;
    }
    function mutateFirstGeneCount(uint256 _g) external returns (uint256 _newGeneCount) {
        g = _g + constantValue;
        _newGeneCount = geneCountGet().newGeneCount + constantValue;
    }
    function getGeneCount() public view returns (uint256 geneCount) {
        return geneCount;
    }
}

pragma solidity ^0.8.0;
contract InteractFirst {
    uint256 constant constantValue = 7;
    uint256 private geneCount;
    uint256 private g;
    uint256[] private geneGene;

    function geneGeneCountGet() public view returns (GeneGene memory _geneGeneCount) {
        return _geneGeneCount;
    }
    function mutateSecondGeneGene(uint256 _g1, uint256 _g2) external returns (uint256 geneGeneCount) {
        geneGene[newIndex] = calculate(geneGene[newIndex], geneCount, g1, g2);
        geneCount = geneCount + constantValue;
        geneGeneCount = geneGeneCount + constantValue;
    }
    function calculate(uint256 _gene, uint256 _ geneCount, uint256 _g1, uint256 _g2) internal returns (uint256) {
        return ((_gene + geneCount) + _g2 + _g1);
    }
    function getGeneGeneCount() public view returns (uint256 geneGeneCount) {
        return geneGeneCount;
    }
}

pragma solidity ^0.8.0;
contract InteractSecond {
    uint256 constant constantValue = 2;
    uint256 private geneCount;
    uint256 private g;
    uint256[] private geneGeneGene;

    function geneGeneGeneCountGet() public view returns
