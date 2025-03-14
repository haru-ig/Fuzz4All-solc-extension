pragma solidity ^0.8.0;
contract SemanticInjection
{
    function semanticInjection1(uint256 a, uint256 b, uint256 c) public pure {
    	uint256[] memory array = new uint256[](3);
    	array[0] = a;
    	array[1] = b;
    	array[2] = c;
    }
}
contract SemanticInjection2
{
     function semanticInjection1(uint256[] memory a, uint256[] memory b, uint256[] memory c) public pure {
    	uint256[] memory d = new uint256[](3);
    	d = a;
    	d = b;
    	d = c;
    }
}
