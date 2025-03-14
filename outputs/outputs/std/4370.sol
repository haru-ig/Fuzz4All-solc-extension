pragma solidity ^0.8.0;
contract ModifiedGeneration
	{
	uint a;
	uint b;
	constructor() {
		uint constant randomUint = uint(uint160(keccak256(abi.encodePacked("AAAAAAAAAAAAAAAAAAAAAAAAAAA=", "0x33559c100000000000000000000000000000000000000000000000000000000"))))) >> 32;
		uint constant randomUint2 = uint(uint160(keccak256(abi.encodePacked("AAAAAAAAAAAAAAAAAAAAAAAAAAA=", "0x33559c100000000000000000000000000000000000000000000000000000"))))) >> 32;
		a = randomUint;
		b = randomUint2;
	}
}

pragma solidity ^0.8.0;
contract IntroducingBugs
	{
	uint a;
	constructor() public {
		a = 1;
		a++;
	}
	function update(uint n) public
	{
		a = n;
		a--;
	}
	function zero() public {
		a = 0;
	}
	function one() public returns (uint) {
		return a;
	}
	function two() public {
		a = 2;
	}
	function three() public {
		a = a + 3;
	}
	function four() public {
		a = a * 46;
	}
	function five() public returns (uint) {
		return a/(a + a);
	}
}
