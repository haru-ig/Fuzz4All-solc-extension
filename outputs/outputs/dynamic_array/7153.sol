pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] array;
}
	uint32 private v;
	uint[] private arr;
	function test(uint x) public {
        arr.push(x);
	}
}
