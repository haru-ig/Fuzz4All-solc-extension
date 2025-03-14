pragma solidity ^0.8.0;
contract good_abi_test {
	address public sender;
	constructor() {
		sender = msg.sender;
		require(msg.sender == address(0), "Sender is equal to EIP1155 address.");
		require(msg.value == 1 ether, "Ether amount must be equal to 1.");
	}
}
