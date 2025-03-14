pragma solidity ^0.8.0;
contract Address
	{
	uint data;
	uint constant constant = 2;
	constructor () public { data = 1;}
	function AddressData( uint a) public
	{
		data = a;
	}
	function f(uint my) public
	  {
	   data = my + constant;
	 }
	function g(uint myx) public
	  {
	   data = myx + constant;
	 }
	function h(uint s) public
	  {
	   data = 2 * s + constant;
	 }
	}
