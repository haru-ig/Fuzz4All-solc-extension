pragma solidity ^0.8.0;
contract simple {
	uint[] private data_private;
	constructor(uint initial) {
		data_private.push(0);
		data_private.push(0);
		data_private.push(0);
		data_private[0] = 0;
		data_private.push(0);
		data_private[1] += 1;
	}
	function getData() public view returns (uint) {
		uint[] memory _data = data_private;
		_data.push(0);
		_data[1] ++;
		_data[0] = initial;
		return _data[1];
	}
}
