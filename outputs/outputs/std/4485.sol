pragma solidity ^0.8.0;
 contract MyContract {
	message M {
		uint i;
		}
	M m;
	constructor() {
		m.i++;
		}
	function f() public {
		m.i;
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	uint16 f;
	constructor() {
		}
	function g() public {
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	uint16 f;
	constructor() {
		}
	function g() public {
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	contract C {
		uint16 f;
		contract A {}
		}
	uint16 g;
	constructor(A a) {
		}
	function h() public {
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	contract C {
		uint16 f;
		contract A {}
		}
	uint16 g;
	constructor(uint16 _f) public {
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	contract C {
		uint16 f;
		contract A {}
		constructor(address) public {}
		}
	string s;
	constructor() public {
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	uint16 f;
	constructor(address o) public {
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	uint16 f;
	constructor(address o) public {
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	uint16 f;
	constructor() public payable {
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	uint16 f;
	constructor() pure public {
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	uint16 f;
	constructor() public {
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	uint16 f;
