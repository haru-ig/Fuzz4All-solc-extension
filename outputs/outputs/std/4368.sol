pragma solidity ^0.8.0;
contract Modification
	{
	address public a = msg.sender;
	 modifier onlyMe  {
		require (msg.sender == a, "Caller is not the address of this contract!");
		_;
	}
	}
pragma solidity ^0.8;
contract Array_test
{
	uint[] storage values;
	mapping(uint => bool) storedValues;
	mapping(uint => bool) storedValues2;

	constructor()
	{
		values = [1111, 2222, 3333];
	}

	function isOdd(uint n, uint arrayLength) onlyMe public
	{
		require(arrayLength % 2 == 1, "Array must be an odd sized array!");
		if (n % 2 == 0) {
			return true;
		} else {
			return false;
		}
	}

	function sort(uint[] memory _arr) onlyMe public
	{
		for (uint32 i = 0; i < _arr.length; i++)
			{
				for (uint32 j = i + 1; j < _arr.length; j++)
				{
					if (_arr[i] > _arr[j])
						{
							uint tmp = _arr[i];
							_arr[i] = _arr[j];
							_arr[j] = tmp;
						}
				}
			}
	}

	function getLength() onlyMe public
	{
		return values.length;
	}

	function getSum(uint[] memory _arr) onlyMe public
	{
		uint total = 0;

		for (uint i = 0; i < _arr.length; i++)
			{
				total += _arr[i];
			}
		return total;
	}
	function setLastIndex(uint a, uint b) public
	{
		arrayIndex = b;
	}

	function clearLastIndex() onlyMe public
	{
		arrayIndex = 0;
	}
	function getElementByIndex(uint index) onlyMe public
	{
		return values[arrayIndex];
	}
	function getElementByValue(uint value) onlyMe public
	{
		for (uint i = 0; i < values.length; i++ )
		{
			if (value == values[i])
				{
					return true;
				}
		}
		return false;
	}
	function removeElementByIndex() onlyMe public
	{
		arrayIndex = arrayIndex - 1;
	}
	function removeElementByValue() onlyMe public
	{
		for (uint i = 0; i < values.length; i++)
		{
			if (value == values[i])
				{
					values.length--;
					arrayIndex--;
					removeElementByIndex();
					break;
				}
		}
	}
