pragma solidity ^0.8.0;
contract BitwiseXOR2 {
	function test() public pure {
		uint a;
		a=0xffff;
		a^(=b);
		a=0xff00;
		a^(=b);
		a=0xff00;
	}
}

contract Array {
	uint[] public arr;
	function set(uint a) public { arr.push(a); }
	function get() public view returns (uint) { return arr[arr.length - 1]; }
	function findMax() public view returns (uint) { return arr[0]; }
	function findMin() public view returns (uint) { return arr[].length; }
	function sum() public view returns (uint) { uint sum = 0; for (uint i; arr.length > i; ++i) sum += arr[i]; return sum; }
}

contract Memory {
	uint[] public arr;
	function set(uint a) public { arr.push(a); }
	function get() public view returns (uint) { return arr[arr.length - 1]; }
	function findMax() public view returns (uint) { return arr[0]; }
	function findMin() public view returns (uint) { return arr[].length; }
	function sum() public view returns (uint) { uint sum = 0; for (uint i; arr.length > i; ++i) sum += arr[i]; return sum; }
}
