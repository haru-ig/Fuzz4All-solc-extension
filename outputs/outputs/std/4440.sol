pragma solidity ^0.8.0;
contract Array
	{
	uint256[] numbers;
	constructor(uint256[] memory a) public { numbers = a; }
	function getMin(uint256) public pure { }
	function getMax(uint256) public pure { }
	function sum(uint256) public pure { }
	function set(uint256[]) public { }
	function get() public view returns (uint256[]) { }
	}
