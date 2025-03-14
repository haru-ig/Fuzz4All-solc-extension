pragma solidity ^0.8.0;
contract c {
	address cAddr;

	constructor (address cAddr) {
		this.cAddr = cAddr;
	}
	function setAddr(address cAddr) public {
		this.cAddr = cAddr;
	}
	function get() public returns (address) {
		return this.cAddr;
	}
}
