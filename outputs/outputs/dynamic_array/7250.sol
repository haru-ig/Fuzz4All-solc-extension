pragma solidity ^0.8.0;
contract Mut {
	address[] memory b;
	constructor() { b[0] = msg.sender;}
}
