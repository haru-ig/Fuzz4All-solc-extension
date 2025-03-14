pragma solidity ^0.8.0;
contract Mutant5Revert {
    function mutantRevert() public pure returns (uint) {
        fallback();
    }

    function fallback() public pure {
        revert("A revert executed when a fallback function does not contain the `revert` modifier.");
    }
}
