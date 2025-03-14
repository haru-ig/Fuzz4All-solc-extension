pragma solidity ^0.8.0;
contract Test {
	struct Data {
    uint32[] array;
}
	bytes32 private arr;
	function test(uint x) public {
        arr.push(x);
        uint x1 = arr[arr.length - 1];
	}
	function call2(bytes memory b) public {
        uint x1 = uint8(uint8(addr(this)) - uint8(0x00009F3d) - uint8(b));
	}
}
