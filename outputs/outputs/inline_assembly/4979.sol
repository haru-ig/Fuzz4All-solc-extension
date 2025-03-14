pragma solidity ^0.8.0;
contract simple {
	address[] private accounts = new address[](5);
	uint[] private data_public = new uint[](5);
	constructor(){
		accounts[0] = 0x1b1;
		data_public[0] += 1;
		data_public[1] = 0;
	}
}
