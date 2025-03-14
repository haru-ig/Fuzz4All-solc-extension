pragma solidity ^0.8.0;
contract SemanticInjection
{
    function semanticInjection1(uint256 a, uint256 b, int256 c) public pure {
    	int256[] memory array = new int256[](3);
    	array[0] = a;
    	array[1] = b;
    	array[2] = c;
    }
}
