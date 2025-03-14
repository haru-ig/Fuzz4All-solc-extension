pragma solidity ^0.8.0;

contract Mutator
{

	Mutation public mutation = new Array();



	function startMutation() external {

		addValueToPosition(44, 123, mutation);
		mutate(mutation);
		printArray(mutation);
	}

	function addValueToPosition(uint index, uint value, Mutation mutation) public {



	}

	function multiplyByPowerOf2(uint value, Mutation memory mutation) public {



	}

	function takeTheMean(uint index, uint length, Mutation memory mutation) public returns(uint) {

		return 0;
	}

	function insertAtPosition(uint index, uint value, uint position, uint length, Mutation memory mutation) public {



	}

	function mutate(Mutation storage mutation) internal {


	}

	function printArray(Mutation memory) public {


	}
}
