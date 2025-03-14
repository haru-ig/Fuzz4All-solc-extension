pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_dynamicArraysOfDifferentLengthsWithFixedSize {
    uint256[3249][3293] public a;
    function callTest02(uint256[3249][3293] memory _arr) public view returns (uint256[3249][3293] memory) {
        return _arr;
    }
}
