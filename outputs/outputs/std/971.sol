pragma solidity ^0.8.0;
contract Mutate123To100
{
	struct MutationState
	{
		address payable _payableAddress;
		uint8 _mutationNumber;
	}

	address payable[] _payableAddresses;
	mapping(uint8 => MutationState) public _mutations;

	constructor(uint8 numMutations)
	{
		_mutations[numMutations] = MutationState(_payableAccount, numMutations);
	}

	function set(_mutationNumber, uint8 value) external onlyOwner {
		require(_mutationNumber <= _mutations.length, "Invalid MutationNumber");
		_mutations[_mutationNumber]._payableAddress.transfer(value);
	}

	function setAll(_payableAddresses) public onlyOwner {
		uint8 _size = _payableAddresses.length;
		for (uint8 i = 0; i < _size; i++) {
			_mutations[_mutations.length]._payableAddress = _payableAddresses[i];
			_mutations[_mutations.length]._mutationNumber = i;
			_mutations.push(MutationState(_payableAddresses[i], i));
		}
	}

	function get() public view returns (address payable[] memory) {
		uint8 _size = _mutations.length;
		address payable[] memory _array = new address payable[](_size);
		for (uint8 i = 0; i < _size; i++) {
			_array[i] = _mutations[i]._payableAddress;
		}
		return _array;
	}

	function getWithIndex() public view returns (uint8[] memory) {
		uint8 _size = _mutations.length;
		uint8[] memory _array = new uint8[](_size);
		for (uint8 i = 0; i < _size; i++) {
			_array[i] = _mutations[i]._mutationNumber;
			if (_array[i]!= i) {



				_mutations[i]._payableAddress.transfer(i);
			}
		}
		return _array;
	}
}
