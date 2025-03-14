pragma solidity ^0.8.0;
contract SemanticInjectionX
{
    function semanticInjection(uint256 a, uint256 b, uint256 c) public pure {
    	uint256[] memory array = new uint256[](3);
    	array[a]++;
    	array[b]++;
    	array[c]++;
     }
}
contract SemanticInjectionY
{
    function semanticInjection(uint256[] memory a, uint256[] memory b, uint256[] memory c) public pure {
    	uint256[] memory array;
    	for (uint256 i = 0;i < a.length; i++)
    	{
        array[i]++;
    	}
    	for (uint256 i = 0;i < b.length; i++)
    	{
        array[i]++;
    	}
    	for (uint256 i = 0;i < c.length; i++)
    	{
        array[i]++;
    	}
    }
}

pragma solidity ^0.8.0;
contract SemanticInjectionX
{
    function semanticInjection(uint256 a, uint256 b, uint256 c) public pure {
    	uint256[] memory array = new uint256[](3);
    	array[a++]++;
    	array[b]++;
    	array[c]++;
     }
}
contract SemanticInjectionY
{
    function semanticInjection(uint256[] memory a, uint256[] memory b, uint256[] memory c) public pure {
    	uint256[] memory array;
    	for (uint256 i = 0;i < a.length; i++)
    	{
    		array[i] ++;
    	}
    	for (uint256 i = 0;i < b.length; i++)
    	{
    		array[i] ++;
    	}
    	for (uint256 i = 0;i < c.length; i++)
    	{
    		array[i] ++;
    	}
    }
}
