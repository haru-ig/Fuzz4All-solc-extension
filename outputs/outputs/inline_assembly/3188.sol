pragma solidity ^0.8.0;
contract C {
	function x() public view returns(uint) {
		return 0xcd;
	}
	event TestEvent(string msg);
	mapping(address => uint) public balances;


	constructor () public {

	}
}
