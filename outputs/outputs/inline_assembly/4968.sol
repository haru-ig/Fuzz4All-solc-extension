pragma solidity ^0.8.0;
contract mutated {
	uint[] private data_private;
	constructor() {
		data_private.push(0);
		data_private[1] += 1;
	}
	function getDataMod() public view returns (uint) {
		uint[] memory _data = data_private;
		_data[1] += 1;
		uint[] memory _data_mod = data_private;
		return _data[1];
	}
}
