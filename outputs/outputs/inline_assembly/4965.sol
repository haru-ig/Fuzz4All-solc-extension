pragma solidity ^0.8.0;
contract simple {
	uint[] private data_private;
	constructor() {
		data_private.push(0);
		data_private.push(0);
		data_private.push(0);
		data_private.push(0);
	}
	function getData() public view returns (uint) {
		return data_private[1];
	}
}
