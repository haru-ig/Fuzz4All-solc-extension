pragma solidity ^0.8.0;
contract Incrementer_SemanticEquivalent {
    function increment_internal() internal pure returns (uint256) {
        return ++increment;
    }
    function increment() public pure returns (uint256) {
        return increment_internal();
    }

    uint256 increment;
}
