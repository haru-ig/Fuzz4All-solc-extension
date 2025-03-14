pragma solidity ^0.8.0;
contract Better {
	uint counter = 0;
	uint public data_public;
	fallback() public payable {
		data_public += 1;
	}
	function fallback() public payable {}

}
