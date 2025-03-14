pragma solidity ^0.8.0;
contract MutateString{
	struct S {
		uint i;
		string value;
	}
	mapping(string => S[]) map_a;
	constructor() {
		uint i = 1;
		i = i.add(1);
		string memory s = (string)"abc";
		map_a[s].push(S({i: i, value: (string)s}));
	}
	function test() public {
		this.test();
	}
}
