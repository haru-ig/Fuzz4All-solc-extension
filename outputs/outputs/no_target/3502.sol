pragma solidity ^0.8.0;
contract m103 {
	event M103();
	uint public a;
	mapping(uint => bool) public b;
	constructor(uint _a) { a = _a; b[msg.sender] = a == _a; }
}
