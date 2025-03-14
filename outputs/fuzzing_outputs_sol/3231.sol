pragma solidity ^0.8.0;
contract SemanticEquivalentFallbackWithException {
    uint256 amount;
    function fallback() public {
        amount = 10;
        return;
    }
    function semanticEquivalentFallbackThrowing(uint256 amount) public {
        require(amount < 10, 'amount is too low!');
        return;
    }
}
