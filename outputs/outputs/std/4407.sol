pragma solidity ^0.8.0;

contract Ownable {
	address payable owner;
	constructor() { owner = msg.sender;}
	modifier onlyOwner() { require(msg.sender == owner); _; }
	}
contract Mutated
	{
	address payable owner;
	constructor() { owner = payable(msg.sender); }
	modifier onlyOwner() { require(msg.sender == owner); _; }
	}
