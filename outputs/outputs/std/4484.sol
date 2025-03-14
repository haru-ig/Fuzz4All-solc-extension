pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint i;
		}
	S s;
	constructor() {
		s.i++;
		}
	function f() public {
		s.i;
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint i;
		}
	S s;
	constructor() {
		s.i++;
		i;
		}
	function f() public {
		s.i;
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint i;
		}
	S s;
	constructor() {
		s.i++;
		s.i;
		}
	function f() public {
		s.i;
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	struct S {
		uint i;
		}
	S s;
	constructor() {
		s.i++;
		s.i++;
		i;
		}
	function f() public {
		s.i;
		}
	}
