pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_dynamicArraysOfDifferentLengths {
    uint256[] public a;
    function callTest01(uint256[] memory _arr) public view returns (uint256[] memory) {
        return _arr;
    }
}
