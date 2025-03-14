pragma solidity ^0.8.0;
contract MutateUint256
{
	uint256 public _value;
}

contract WriteUintToMemoryStruct
{
	address payable _payableAccount;
	struct StoreVariablesStruct {
		uint256 _value;
	}
	StoreVariablesStruct _storeVariablesStruct;
}


contract Array
{
	uint256[] private _storage;

	function set(uint256[] memory value) external
	{

		require(value.length == _storage.length);
		_storage = value;
	}

	function get() public view returns (uint256[] memory)
	{
		return _storage;
	}

	function push(uint256 element) external
	{
		require(contains(element));
		_storage.push(element);
	}

	function insert(uint256 position, uint256 element) external
	{
		require(position <= length());
		_storage.insert(position, element);
	}

	function deleteAt(uint256 position) external
	{
		require(position <= length());
		uint256 length = _storage.length;
		if (position < length - 1) {

			uint256 currentElement = _storage[position];
			uint256 index = _storage.length - 1;
			_storage[index] = currentElement;
			_storage.pop();
		}
		uint256 element = _storage[position];
		_storage[position] = 0;
		_storage[length - 1] = 0;



		_storage.length--;
	}

	function removeLast() public
	{
		require(!isEmpty());
		uint256 length = _storage.length;
		uint256 element = _storage[length - 1];
		uint256 returnValue = length * (element);
		deleteAt(length - 1);
		return (returnValue);
	}

	function removeAt(uint256 position) public
	{
