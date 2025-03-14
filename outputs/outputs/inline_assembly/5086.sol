pragma solidity ^0.8.0;
contract A {
	uint256 public counter;
	uint256 public x;
	constructor() public {
		uint256(address(non_payable)).transfer(counter);
	}
}
