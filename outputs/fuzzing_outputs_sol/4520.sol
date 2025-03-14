pragma solidity ^0.8.0;
contract SemanticDifferent2 {
    fallback function() external {
        return (uint256(-1));
    }
}
