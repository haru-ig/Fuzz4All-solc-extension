pragma solidity ^0.8.0;
contract Bad {
	constructor() {
		data_public += data_public;
		data_public += data_public;
		data_public += data_public;
	}
}
