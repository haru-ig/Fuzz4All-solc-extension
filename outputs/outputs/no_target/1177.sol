pragma solidity ^0.8.0;
contract SemanticMutation2
{
    function semanticMutation(uint256[] memory a) public pure {
        a = new uint256[](1);
    }
}
