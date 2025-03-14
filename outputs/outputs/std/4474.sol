pragma solidity ^0.8.0;
contract MyContract
	{
	enum MyEnum
		{ a, b, c }
	function f();
	}

pragma solidity ^0.8.0;
contract Main {
	function f() public {}
	}

pragma solidity ^0.8.0;
contract Main {
	function f() public {}
	}

pragma solidity ^0.8.0;
contract Main {
	Main m;
	function f() public {
		m.m.f();

	m.f();
	}
	}

pragma solidity ^0.8.0;
contract Main {
	Main m;
	function f() public {
		m.f();

	m.m.f();
	}
	}
pragma solidity ^0.8.0;
