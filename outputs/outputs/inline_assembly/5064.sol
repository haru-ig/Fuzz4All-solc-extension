pragma solidity ^0.8.0;
contract Equivalent2 {
	uint x = 0;
	uint private data_private = 0;
	constructor() {
		x = 1;
		require(data_private >= 1);
		x = 2;
	}
}
contract A2 {
	uint public x;
	uint public counter = 0;
	constructor() {
		counter = 3;
		x = -1;
		Counter2();
		x = 5;
		require(x >= 0);
		counter = 9;
		x = 1;
	}
	function Counter2() public  {
		x = 11;
		counter += 1;
	}
}
