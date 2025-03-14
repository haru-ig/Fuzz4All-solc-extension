pragma solidity ^0.8.0;
contract A {
	address payable nonpayable;
	uint public counter=0;
	constructor( uint _balance, address payable payOwner) public payable {
		nonpayable.transfer(_balance);
	mapping(uint => bool) mem;
	constructor( uint _balance, address payable _nonPayable) public {
		nonpayable = _nonPayable;
		nonpayable.transfer(_balance);
	}
}
