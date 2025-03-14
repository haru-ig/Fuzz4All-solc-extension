pragma solidity ^0.8.0;
contract SyntacticallyIncorrectSemanticMutation
{
    function syntacticallyIncorrectSemanticMutation(uint256[] memory a) public pure {
    	uint32 [1] memory temp = new uint32[](1);
    	temp = a;
    }
}
contract SyntacticallyIncorrectSemanticMutation2
{
     function syntacticallyIncorrectSemanticMutation(uint256[] memory a) public pure {
    	uint264[1] memory temp = new uint264[](1);
    	temp = a;
    }
}
