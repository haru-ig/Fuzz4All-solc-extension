pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity27_dynamicArraysOfDifferentSizes {
    uint256[5][] public a;
    function callTest10(uint256[5][] memory _arr) public view returns (uint256[5][] memory) {
        return _arr;
    }
    function callTest11(uint256[5][2][] memory _arr) public view returns (uint256[5][2][] memory) {
        return _arr;
    }
}
contract SemanticallyEquivalentSolidity28_dynamicArraysOfSameLength {
    uint256 a;
    function callTest15(uint256[] memory _arr) public view returns (uint256[] memory) {
        return _arr;
    }
    function callTest19(uint256[2] memory _arr) public view returns (uint256[2] memory) {
        return _arr;
    }
}
