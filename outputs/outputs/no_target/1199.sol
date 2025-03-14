pragma solidity ^0.8.0;
contract SemanticInjection3
{
     function semanticInjection1(uint256 a, uint256 b, uint256 c) public pure {
    	uint256[][] memory array = new uint256**[](3);
    	array[0] = new uint256[](2);
    	array[0][0] = a;
    	array[0][1] = b;
    	array[1] = new uint256[](2);
    	array[1][0] = c;
    	array[1][1] = c;
    	array[2] = new uint256[](2);
    	array[2][0] = b;
    	array[2][1] = a;
    }
}
contract SemanticInjection4
{
     function semanticInjection1(uint256[][] memory a, uint256[][] memory b, uint256[][] memory c) public pure {
    	uint256[][] memory d = new uint256**[](3);
    	d = a;
    	d = b;
    	d = c;
    }
}
contract SemanticInjection5
{
     function semanticInjection1(uint256[] memory a, uint256[] memory b, uint256[] memory c) public pure {
    	uint256[] memory d = new uint256[](3);
    	d = a;
    	d = b;
    	d = c;
    }
}
contract SemanticInjection6
{
     function semanticInjection1(uint256[][] memory a, uint256[][] memory b, uint256[][] memory c) public pure {
    	uint256[][] memory d = new uint256**[](3);
    	d = a;
    	d = b;
    	d = c;
    }
}
contract SemanticInjection7
{
     function semanticInjection1(uint256[] memory a, uint256[] memory b, uint256[] memory c) public pure {
    	uint256[] memory d = new uint256[](3);
    	d = a;
    	d = b;
    	d = c;
    }
}
contract SemanticInjection8
{
     function semanticInjection1(uint256[][] memory a, uint256[][] memory
