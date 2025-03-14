pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint[] array;
}
	uint[] private arr;
	function test() public storage {
        arr.push(uint32(0));
	}
}
