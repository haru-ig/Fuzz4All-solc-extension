pragma solidity ^0.8.0;
contract SemanticMutation2
{
    function semanticMutation2(uint256[] memory a) public pure {
        a = new uint256[2];
    }
}
