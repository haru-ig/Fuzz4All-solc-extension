pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_dynamicArraySizeAndOverflowPrevention {
    uint256[10000] a;
    function callTest03(uint256[10000] memory _arr) public view returns (uint256[10000] memory) {
        return _arr;
    }
}
