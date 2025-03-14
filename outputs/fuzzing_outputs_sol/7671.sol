pragma solidity ^0.8.0;
contract SemanticEquivalence
{
    constructor() { revert(); }
    function semanticEquivalence() public pure { revert(); }
}



pragma solidity ^0.8.0;
contract SatisfySemanticEquivalence
{
    constructor() { revert(); }
    function fallback() public pure { revert(); }
    receive() external payable { revert(); }
}
