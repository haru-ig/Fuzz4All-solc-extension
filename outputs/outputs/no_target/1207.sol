pragma solidity ^0.8.0;
contract SemanticInjection4
{
    function semanticInjection4(uint256 a, uint256 b) public pure {
    	uint256[] memory array = new uint256[](3);
    	array[0] = a;
    	array[1] = b;
    }
}
