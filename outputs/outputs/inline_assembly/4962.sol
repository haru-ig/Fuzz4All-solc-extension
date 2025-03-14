pragma solidity ^0.8.0;
import './simple.sol';
contract simple_sol {
	uint[] private data_private;

	function simple_sol() {
		data_private.push(0);
		data_private.push(300);
		data_private.push(16513);
		data_private.push(0);
		data_private.push(340);
		data_private.push(349);
	}


	function setPrivateData(uint _i, uint _data) public {
		uint _idx = data_private.length - (_i + 2);
		if (_data > data_private[_idx]) {
			data_private[_idx + 1]++;
		} else if (_data < data_private[_idx]) {
			data_private[_idx + 1]--;
		}

		data_private[_idx] = _data;
	}

	function getData() public view returns (uint) {
		return data_private[data_private.length - 1];
	}
}
