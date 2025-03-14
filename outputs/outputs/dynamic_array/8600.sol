pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity91 {
    function mutatorTest200() external payable {}
}
contract SemanticallyEquivalentSolidity92 {
    function mutatorTest300() external {
        storage uint i = 0;
    }
}
contract SemanticallyEquivalentSolidity93 {
    function mutatorTest400() external pure {}
}
