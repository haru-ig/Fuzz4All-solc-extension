pragma solidity ^0.8.0;
contract simple {
	uint[] private data_private = new uint[](5);
	constructor() {
		data_private[0] = 0;
		data_private[1] += 1;
		data_private[2] = 0;
	}
}
