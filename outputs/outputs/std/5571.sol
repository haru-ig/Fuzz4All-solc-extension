pragma solidity ^0.8.0;
contract Mutate64{
	struct S {
		uint256 i;
		uint256value;
	}
	mapping(uint => S[]) a;
	constructor() {
		S memory s;
		s.i = 1;
		s.value = 1;
		a[1].push(s);
	}
	function test() public {
		this.test();
	}
}
