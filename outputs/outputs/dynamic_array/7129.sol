pragma solidity ^0.8.0;
contract Test {
	struct Data {
		uint32[] array;
	}
	function test(uint x) public {
		Data memory d;
		d.array.push(x);
		Data storage s;
		s.array.push(x);
		Data memory oldStorage;
		oldStorage.array.push(x);
	}
}
