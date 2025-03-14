pragma solidity ^0.8.0;
contract SemanticInjection3
{
     function semanticInjection1(uint256[4] memory a, uint256[4] memory b, uint256[4] memory c) public pure {
    	uint256[4] memory d = new uint256[4];
    	d = a;
    	d = b;
    	d = c;
    }
}
contract SemanticInjection4
{
     function semanticInjection1(uint256[4,5] memory a, uint256[4,5] memory b, uint256[4,5] memory c) public pure {
    	uint256[4,5] memory d = new uint256[4,5];
    	d = a;
    	d = b;
    	d = c;
    }
}
contract SemanticInjection5
{
     function semanticInjection1(uint256[50000] memory a, uint256[50000] memory b, uint256[50000] memory c) public pure {
    	uint256[50000] memory d = new uint256[50000];
    	d = a;
    	d = b;
    	d = c;
    }
}
contract SemanticInjection6
{
     function semanticInjection1(uint256[1000000] memory a) public pure {
    	uint256[1000000] memory b;
    	uint256[1000000] memory c;
    	b = a;
    	c = a;

        a = c;
    	b = c;
    	a = b;
    	b = b;
    	a = b;
    	b = a;
    	a = a;
    	b = b;
    	a = b;
    	b = a;
    	a = b;
    	b = a;
    	a = b;
    	b = a;
    	a = a;
    	b = b;
    	a = b;
    	b = a;
    	a = b;
    	b = a;
    	a = b;
    	b = a;
    	a = b;
    	b = a;
