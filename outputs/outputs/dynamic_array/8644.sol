pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_dynamicArraysOfDifferentLengths {
    uint256[] public a;
    int256[] public b;
    function callTest01(uint128[] memory _arr) public view returns (uint128[] memory) {
        return _arr;
    }
}
