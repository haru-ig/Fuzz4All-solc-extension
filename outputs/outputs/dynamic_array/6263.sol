pragma solidity ^0.8.0;
library l {
	struct s {
		uint a;
		uint b;
	}
	function get() public pure returns (s memory) {
		s memory memory = l.get();
		memory.b;
		memory.a;
		memory.a := 0;
		memory = l.get();
		memory.b;
		memory.a;
		memory.a := 0;
		memory = l.get();
		memory.b;
		memory.a;
		memory.a := 0;
		memory = l.get();
		memory.b;
		memory.a;
		memory.a := 0;
		memory = l.get();
		memory.b;
		memory.a;
		memory.a := 0;
		memory = l.get();
		memory.b;
		memory.a;
		memory.a := 0;
		memory = l.get();
		memory.b;
		return memory;
	}
}
contract c {
	function p() public {
		l.s memory memory = l.get();
		memory;
		memory;
		memory == memory;
		memory;
		memory = l.get();
		memory;
		memory;
		memory;
		memory;
		memory;
	}
}
