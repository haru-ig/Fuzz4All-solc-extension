pragma solidity ^0.8.0;
contract SemanticEquivalent
{
    function semanticContract() public payable {
        SemanticEquivalent semantic = SemanticEquivalent(msg.sender);
    }
}
