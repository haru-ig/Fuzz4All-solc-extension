pragma solidity ^0.8.0;
contract Array
	{
	uint[] public array;
	uint data;
	constructor () public { array.push(1); data = 0; }
	function Array ( ) public
		{
		array.push(1e7); data = 0;
		}
	function length ( ) public view returns (uint256) {return array.length;}
	function arrayLength ( uint i ) public view returns (uint256) {return array[i];}
	function getMin( ) public view returns (uint256) {return array[array.length - 1];}
	function getMax( ) public view returns (uint256) {return array[0];}
	function getSum( ) public view returns (uint256) {return array.length;}
	function set ( ) public
	  {
		array[array.length - 1] = uint(data); array.push(uint(data)); data = 0;
	  }
	function test2 ( ) public view returns (uint256)
	  {
	  	return (arrayLength(0) * data);
	  }
	function getMin2( ) public view returns (uint256)
	  {
	  	return (array.length * data);
	  }
	function getMax2( ) public view returns (uint256)
	  {
	  	return (data + array.length);
	  }
	function getSum2 ( ) public view returns (uint256)
	  {
	  	return ((data + array.length) * data);
	  }
	function push ( ) public
	  {
	  	array.push(1e15);
	  }
	}
