pragma solidity ^0.8.0;
contract bad2 {
	uint data_private;
	constructor() {
		data_private += 10;
		data_private += 6;
		data_private += 7;
		data_private += 0;
		data_private += 0;
	}
}
