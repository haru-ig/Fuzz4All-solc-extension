pragma solidity ^0.8.0;
contract SemanticEquivalence
{
    constructor() { revert(); }
    function semanticEquivalence() public pure returns (uint256 a, uint256 b) { revert(); }
}
contract SatisfySemanticEquivalence
{
    constructor() { revert(); }
    function fallback() public pure returns (uint256 a, uint256 b) { revert(); }
    receive() external pure returns (uint256 a) { revert(); }
}
contract NoSemanticEquivalence
{
    constructor() { revert(); }
    function fallback() public pure { revert(); }
}
