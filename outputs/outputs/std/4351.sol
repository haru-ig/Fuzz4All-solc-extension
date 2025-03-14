pragma solidity ^0.8.0;
contract MutatedAddress
	{
	address public a;
	uint public b;
	constructor(address aa, uint bb) public {a = aa; b = bb;}
	function MutateAddress(uint a, uint b) public {a += b;}
	function GetAddress() public view returns (address) {return a;}
	function GetAddres(uint a, uint b) public view returns (address) {return a+(b); }
	function GetAndAddres(uint a, uint b) public view returns (address) {a = a+(b); return a; }
	function MutateAddress(uint a, uint b) public {a -= b;}
	}
