pragma solidity ^0.8.0;
contract Bad {
	Mut m;
	constructor () {
		m = new Mut();
	}
}
