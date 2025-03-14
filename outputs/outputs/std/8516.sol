pragma solidity ^0.8.0;
contract MutationEquivalence4
{
	uint[] memory numbers;
}
contract MutationEquivalence3
{
	struct MemoryStruct
	{
		uint[] a;
	}

	struct ArrayStruct
	{
		uint[] b;
	}

	function getStruct(memoryStruct memory) public pure view returns (MemoryStruct memoryMem)
	{
		MemoryStruct memoryMem = memoryStruct;
	}

	function getArray(arrayStruct memory) public pure view returns (ArrayStruct memoryArr)
	{
		ArrayStruct memoryArr = arrayStruct;
	}
}
contract MutationEquivalence2
{
	struct MemoryStruct
	{
		uint[] a;
	}

	struct ArrayStruct
	{
		uint[] b;
	}

	function getStruct(memoryStruct memory) public pure view returns (MemoryStruct memoryMem)
	{
		MemoryStruct memoryMem = memoryStruct;
	}

	function getArray(arrayStruct memory) public pure view returns (ArrayStruct memoryArr)
	{
		ArrayStruct memoryArr = arrayStruct;
	}

	function setStruct(MemoryStruct memory) public pure
	{
		MemoryStruct memoryMem = memory;
	}

	function setArray(ArrayStruct memory) public pure
	{
		ArrayStruct memoryArr = arrayStruct;
	}
}
contract MutationEquivalence1
{
	function setArray(uint[10] memory a) public pure {}
}
