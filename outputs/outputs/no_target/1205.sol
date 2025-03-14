pragma solidity ^0.8.0;
contract SemanticInjection4
{
    function semanticInjection1(address a, uint256 b) public pure {
    	address[] memory array = new address[](1);
    	array[0] = a;
    }
    function semanticInjection2(address a, address b, uint256 c) public pure {
    	address[] memory d = new address[](1);
    	d = a;
    }
}
