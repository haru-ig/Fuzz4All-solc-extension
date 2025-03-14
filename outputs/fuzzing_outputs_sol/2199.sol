pragma solidity ^0.8.0;
contract Mutater532 {
	address payable public payee;
	uint private count;
	address payable public caller;
	modifier onlyCaller {
		require(msg.sender == caller);
		_;
	}
	constructor(
		address payable _caller
	) {
		address payable tmp = msg.sender;
		caller = _caller;
		payee = tmp;
	}
	fallback() payable external {
		count;
		payee;
		caller;
	}
	receive() external payable {
		count;
		payee;
		caller;
	}
}
