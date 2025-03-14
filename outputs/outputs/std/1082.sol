pragma solidity ^0.8.0;
contract Math {
	function add(uint a, uint b) public pure returns (uint) {
		return a + b;
	}
	function mul(uint a, uint b) public pure returns (uint) {
		return a * b;
	}
}

contract Main {
	uint num;
	function main() public {
		num = 0;
		num = Math.add(num, Math.add(0, num + 1));
		assert(num == 10);
	}
}
