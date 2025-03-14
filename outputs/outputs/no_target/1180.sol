pragma solidity ^0.8.0;
contract SemanticMutation
{
    function semanticMutation(uint256[] memory a) public pure {
    	uint256[] memory temp = new uint256[](2);
    	temp = a;
    }
}


pragma solidity ^0.8.0;
contract SemanticMutation2
{
     function semanticMutation(uint256[] memory a) public pure {
    	uint256[] memory b = new uint256[](2);
    	b = a;
    }
}
