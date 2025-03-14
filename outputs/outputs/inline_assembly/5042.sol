pragma solidity ^0.8.0;
contract bad {
	uint counter = 0;
	uint internal data_priv;
	constructor() {
		data_priv += 1; data_priv += 5; data_priv += 3;
	}
}
