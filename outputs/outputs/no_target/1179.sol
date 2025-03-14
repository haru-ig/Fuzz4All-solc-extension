pragma solidity ^0.8.0;
contract SemanticMutation3
{
    function semanticMutation(uint256[] memory a) public pure {
        a.push();
        a.push();
        a = new uint256[](0);
    }
}
