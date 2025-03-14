pragma solidity ^0.8.0;

contract SemanticallyEquivalentSolidity89 {
    function callAnotherMethod(
        uint[] storage aBytes,
        uint[] memory bBytes,
        uint[] memory cBytes
    ) public {
        aBytes[0] = bBytes.length;
        bBytes[0] = 2**32;
    }
}
