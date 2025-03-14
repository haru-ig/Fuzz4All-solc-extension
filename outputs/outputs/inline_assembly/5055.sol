pragma solidity ^0.8.0;
contract Good {
	uint counter = 0;
	uint data;
	constructor() {
		data = 1;
		assembly {
			counter := add(counter, 1)
			data := add(data, 1)
		}
	}
}
