pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] array;
}
	uint[] private arr;
	function test(uint x) public {
        arr.push(uint32(x));
	}
}
