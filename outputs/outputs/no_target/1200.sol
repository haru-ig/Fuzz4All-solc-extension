pragma solidity ^0.8.0;
contract SemanticInjection
{
    function semanticInjection1(uint256[] memory a, uint256[] memory b, uint256[] memory c) public pure {
    	uint256[] memory d = c;
    	uint256[] memory e = new uint256[](3);
    	e = a;
    	e = b;
    	e = d;
    }
}
