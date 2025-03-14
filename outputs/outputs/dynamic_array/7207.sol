pragma solidity ^0.8.0;
contract Modded {
	address admin;
	constructor() public {
		if (block.number!= 2) admin = msg.sender;
	}
	function f() public {
		if (msg.sender!= admin) msg.sender.transfer(5);
	}
}
