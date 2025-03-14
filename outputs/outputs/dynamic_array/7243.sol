pragma solidity ^0.8.0;
contract Bad1 {
	address[] memory a;
	constructor(address[] memory b) {
		require(b.length == 0, "Bad1");
		a = new address[](0);
	}
}
