pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_binaryArrays {
    bytes32[] b;

    function callTest01(bytes memory _mem) public view returns (bytes32[] memory) {
        return _mem;
    }
}
