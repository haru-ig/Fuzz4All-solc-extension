pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v1Mutators {
	uint256 constant _OriginalValue = 201;
	uint256 constant constantValue = 311;
	uint256 constant notComputedValue = 202;

	uint256 public constantMutData;

	function EquivalentAbiMutations_v1Mutators (uint256 initial) public {
		constantMutData = initial;
		constantMutData = 1;
	}

	function update (uint256 newValue) public {
		constantMutData = newValue;
		constantMutData = 2;
	}
}
 contract EquivalentAbiMutations_v1 {
	uint constant public _ConstantValue = 200;
	uint constant notComputed = 202;

	uint public computedValue;

	function EquivalentAbiMutations_v1 (uint initial) public {
		computedValue = initial;
	}

	function test (uint _value21) public {

		assert (notComputed == notComputedValue);

		revert ("I will never be called!");
    }
}
