pragma solidity ^0.8.0;
contract Address
	{
	uint data;
	constructor () public { data = 0;}
	function AddressData( uint a) public
	{
		data = a;
	}
	function f(uint my) public
	  {
	   data = my + 1e7;
	 }
	function g(uint myx) public
	  {
	   data = myx + 1e7;
	 }
	function f2(uint my) public
	  {
	   data = my + 2e6;
	 }
	function g2(uint myx) public
	  {
	   data = myx + 1e7;
	 }
	}
