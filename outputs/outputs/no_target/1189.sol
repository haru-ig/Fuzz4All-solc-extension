pragma solidity ^0.8.0;
contract SemanticMutation3
{
    function semanticMutation(uint256[] memory a) public pure {
    	uint256[] memory[] memory temp = new uint256[](2);
    	temp[0] = a;
    }

    function semanticMutation2(uint256[] memory a) public pure {
    	uint256[] memory[] memory temp = new uint256[](2);
    	temp[0][0] = a;
    }
}
