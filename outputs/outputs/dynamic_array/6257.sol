pragma solidity ^0.8.0;
struct s2 {
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
}
contract C {
	s2 memory memory_storage;
}
pragma solidity ^0.8.0;
function f() {
	s2 memory_storage;
	memory_storage.c[2] = 1;
}
contract C2 {
	C my_C;
	function f() public view {
		uint myConst = 100;
		my_C.my_C.memory_storage.b = myConst;
		if (myConst!= 100) {
		assembly {
			revert(0, 0)
		}
	}
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
struct s {
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
	uint c;
}
c1 c1_instance;
contract c1 {
	s memory memory_storage;
	c c_instance;
	function s2storage(s memory memory_storage_) public {
		memory_storage = memory_storage_;
	}
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract c {
	uint b;
	uint c[20];
	function s2storage(s memory memory_storage_) public {
		c[0] = memory_storage_;
	}
	function _s2storage(s memory memory_storage_) public {
		s2storage(memory_storage_);
	}
}
pragma solidity ^0.8.0;
