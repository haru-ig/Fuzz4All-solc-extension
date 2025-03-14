pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck20
	{
	    uint8[] myArray;
		function mutated() public {
		myArray[50] = 99;
		}
	}
