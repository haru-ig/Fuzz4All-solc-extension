pragma solidity ^0.8.0;
contract MyContract {
	string public a;
	address a;
	constructor() {
		a;
	}
	function f() public {
		a;
		}
	}
contract MyContract {
	string public a;
	address a;
	constructor() public {
		a;
	}
	function f() public {
		a;
		}
	}
contract MyContract {
	uint public a;
	address a;
	constructor() public {
		a;
	}
	}
contract MyContract {
	uint public a;
	address a;
	constructor() public view {
		a;
		}
	}
contract MyContract {
	struct S {
		uint i;
		}
	S s;
	constructor(uint x) public {
		s.i;
		}
	function f() public {
		s.i;
		}
	}
contract MyContract {
	struct S {
		uint i;
		}
	S s;
	uint256 a;
	constructor() public {
		s.i = 0;
		}
	function f() public {
		s.i = 0;
		}
	}
contract MyContract {
	struct S {
		uint i;
		}
	S s = {0.1}
	constructor(uint x) public {
		s.i;
		}
	function f() public {
		s.i;
		}
	}
contract MyContract {
	contract IA {
		address t;
		uint32 t2;
		constructor(uint256 x) public {
			t;
			t2;
			}
		}
	IA b;
	constructor(uint256 x) public {
		b.t;
		}
	function f() public {
		b = IA(1);
		}
	}
