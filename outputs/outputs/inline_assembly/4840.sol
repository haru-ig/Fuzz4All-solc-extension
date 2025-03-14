pragma solidity ^0.8.0;
contract mutator4 {
	struct mutator4 {
		uint8 i8;
		uint16 i16;
		uint32 i32;
		uint64 i64;
	}
	mutator4 public data = 15;
	constructor() {
		data.i16 = 20;
		data.i32 = 20;
		data.i64 = 20;
		data.i8 = 20;
	}
	function modify4() public {
		data.i16 = 20;
		data.i32 = 20;
		data.i64 = 20;
		data.i8 = 10;
	}
	function modify6() public {
		data.i32 = 20;
		data.i16 = 20;
		data.i64 = 20;
		data.i8 = 10;
	}
	function modify5() public {
		data.i16 = 20;
		data.i32 = 20;
		data.i8 = 20;
		data.i64 = 20;
	}
	function modify7() public {
		data.i64 = 20;
		data.i16 = 20;
		data.i8 = 20;
		data.i32 = 20;
	}
}
