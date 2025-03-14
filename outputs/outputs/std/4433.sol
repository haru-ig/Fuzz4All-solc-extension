pragma solidity ^0.8.0;
contract Mutate
	{
	uint data1 = 1;
	uint data2 = 2;
	uint my;
	constructor () public { }
	function f(uint _a) public
	{
		data1 = data1 + _a;
	}
	function g(uint _a, uint _b) public
	{
		data2 = data2 + _a;
		my = _b;

		}
	}

pragma solidity ^0.8.0;
contract Mutate
	{
	uint data1 = 3;
	uint data2 = 4;
	uint my;
	mapping(address => uint) storage store;
	constructor () public {}
	function f(uint _a) public
	{
		data1 = data1 + _a;
		store[msg.sender] = data1;
	}
	function g(uint _a, uint _b) public
	{
		data2 = data2 + _a;
		store[msg.sender] = data2;
		my = _b;

		}

	}

pragma solidity ^0.8.0;
contract Mutate
	{
	uint data1 = 3;
	uint data2 = 4;
	uint my;
	mapping(address => uint) storage store;
	constructor () public {}
	function f(uint _a) public
	{
		data1 = data1 + _a;
		store[msg.sender] = data1;
	}
	function g(uint _a, uint _b) public
	{
		data2 = data2 + _a;
		data2 = data2;
		store[msg.sender] = data2;
		my = _b;

		}

	}

pragma solidity ^0.8.0;
contract Mutate
	{
	uint data1 = 5;
	uint data2 = 6;
	uint my;
	mapping(address => uint) memory store;
	constructor () public {}
	function f(uint _a) public
	{
		data1 = data1 + _a;
		store[msg.sender] = data1;
	}
	function g(uint _a, uint _b) public
	{
		data2 = data2 + _a;
		data2 = data2;
		store[msg.sender] = data2;
		my = _b;

		}

	}
/* Please create a mutated program that uses
