pragma solidity ^0.8.0;
contract mutated {

	address signerAddress = 0x00000000000000000000000000000000000000000000000;
	address signerAddressModified = 0x7e1e3c7ea5633f73725c1db884a1a2418ab876d37d8187c5e2dd0cd0009268a;
	address toAddress = address(0x0000000000000000000000000000000000000000000000);
	uint value = 0;

	address payable signerAddressPayable;
	contract payableProxy {
		address public adminAddress = 0x000000000000000000000000000000000000000000000;
		function payableProxy() public payable {
			owner = msg.sender;
		}
		message payable ProxyCall() public {
			msg.sender.call.value(msg.value)(abi.encodePacked(""));
		}
	}

	constructor() public {



	}

	event ChangeSignerAddress(address newSignerAddress);

	function sign() public payable {

		require(msg.sender == address(this), "caller");
