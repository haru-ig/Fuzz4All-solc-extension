pragma solidity ^0.8.0;
contract SemanticInjection2
{
    uint256[] memory _array;
    function semanticInjection(uint256[] memory a, uint256[] memory b, uint256[] memory c) public {
    	uint256[] memory d;
    	d = a;
    	d = b;
    	d = c;
    }
}
contract SemanticInjection4
{
    uint256[] memory _array;
    function semanticInjection(uint256[] memory a, uint256 b) public {
    	uint256[] memory d;
    	uint256 c = a;
    	uint256 d = b;
    	d = c;
    }
}
