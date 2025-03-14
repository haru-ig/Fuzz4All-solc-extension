pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint i;
		}
	S g;
	S f;
	constructor() {
		f.i;
	}
	function f() public {
		f.i;
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint a;
		string name;
		uint[] data;
		mapping (uint => string) names;
		}
	 uint totalBytes = 40;
	 S.S memory s;
	 bytes8 mem;
	 address addr;
	 constructor() public {
	 	s;
	 	mem;
	 	addr;
	 	}

	 function f() public {
		s;
		mem;
		addr;
		}

	 function g() public {
		S.S memory mem;
		mem;
		mem.i;
		mem.i;
		mem.names.length;
		mem.data.length
		s.a;
		s.names.length;
		s.data.length;
		s.names.i;
		s.data.i;
		S.S memory s;
		s.i;
		s.names.i;
		s.data.i;
		S memory s;
		s.i;
		s.names.i;
		s.data.i;
		}
	 function h(address x) public {
		S memory s;

		s.i;
		}
	 function i(address x) public {
		S memory s;

		s.i;
		}
	}
