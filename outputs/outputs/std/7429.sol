pragma solidity ^0.8.0;
contract Address1 {
	function address1() public pure returns (address) {
		return msg.sender;
	}
}
