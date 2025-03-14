pragma solidity ^0.8.0;
contract Mutated4
	{
	address payable[] payable arr = new address payable[](10);
	function Mutated(uint a) public
	{
	   for(uint i = 0; i < arr.length; i++) {
               a = (a - (1e7-1));
	   }
      address a = (a);
	  arr[i] = a;
	}
	}

pragma solidity ^0.8.0;
contract MutatedArray{
	mutating uint[] arr;
	function Mutated(int a) public
	{
	   for(int i = 0; i < arr.length; i++)
	      arr[i] = i + (a - (1e7-1));
	}
	}
