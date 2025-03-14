pragma solidity ^0.8.0;
contract Caller
	{
	address data;
	constructor () public { data = 0;}
	function CallerAddress( addr) public
	{
	   data = addr;
	 }
	function f() public
	  {
	   data = msg.data;
	 }
	function m() public
	  {
	   data = address(this);
	 }
	}
