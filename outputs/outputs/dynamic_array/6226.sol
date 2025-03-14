pragma solidity ^0.8.0;


contract X
{
	function test(function(uint256) pure internal) public
	{
	}
}

contract Y
{
	function test(function(uint256) pure internal) public
	{
		X x;
		x.test(constantStorage(1));
		x.test(constantFunction(8));
	}
}

contract Risky
{
	function test(function(uint256) pure internal) public
	{
	}
}

contract Risky2
{
	function test(function(uint256) pure internal) public
	{
		Risky x;
		x.test(constantStorage(1));
		x.test(constantStorage(1));
	}
}


contract CheckPoint
{
	function test(function(uint256) pure internal) public
	{
	}
}
