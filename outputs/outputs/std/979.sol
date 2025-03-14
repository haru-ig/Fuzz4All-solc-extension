pragma solidity ^0.8.0;
contract Mutate100ToUint256
{
	address payable _payableAccount;
	uint256 _value;
	function mutate() private {
		_payableAccount.call{value: _value}("");
	}
}

pragma solidity ^0.8.0;
contract ArraySort
{
	uint256[] private _array;
	function setWithUnsigned(uint256 newElement) public {
		if (_array.length == 1) {
			_array.push(newElement);
		} else {
			_array[1] = newElement;
		}
	}
	function setWithSigned(int256 newElement) public {
		if (_array.length == 1) {
			_array.push(newElement);
		} else {
			_array[1] = newElement;
		}
	}
	function setWithArray(uint256[] memory newElement) public {
		if (_array.length == 1) {
			_array.push(newElement);
		} else {
			_array[2] = newElement;
		}
	}
	function sortByIndex() public {
		sort(_array, uint256, uint256);
	}
	function sortByPointer() public {
		sort(address(_array), uint256, uint256);
	}
	function sortByMemory() public {
		sort(uint(uint256(_array).toUint8()), uint256, uint256);
	}
	function sortByAddress() public {
		sort(address(_array), uint256, uint256);
	}
}

pragma solidity ^0.8.0;
contract Multiply
{
	uint256 _leftOperand;
	uint256 _rightOperand;
	uint256 _result;
	function multiply(uint256 newLeftOperand, uint256 newRightOperand) public {
		_result = _leftOperand * newLeftOperand * _rightOperand + _leftOperand * _rightOperand * newRightOperand;
	}
}
