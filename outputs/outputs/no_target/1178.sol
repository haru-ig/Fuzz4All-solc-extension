pragma solidity ^0.8.0;
contract SemanticMutation
{
    uint256[] private a;

    function semanticMutation(uint256[] memory _a) public pure {
        a = (a == _a)? new uint256[](0) : a;
    }
}
