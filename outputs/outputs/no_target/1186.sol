pragma solidity ^0.8.0;
contract SemanticMutation3
{
     function semanticMutation(uint256[] memory a) public pure {
    	uint256[] memory b = new uint256[](2);
    	b = a;
        unchecked {
     b[0] = 1;
    }

    }
}
contract SemanticMutation4
{
     function semanticMutation(uint256[] memory a) public pure {
    	uint256[] memory b = new uint256[](2);
    	b = a;
        unchecked {
     unchecked
     }
    }
}
