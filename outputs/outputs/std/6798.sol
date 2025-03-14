pragma solidity ^0.8.0;
contract A {
	address[5] b;
	address c;
	uint d;
	struct B {
		uint a;
	}
}

pragma solidity ^0.8.0;
contract A {}

pragma solidity ^0.8.0;
contract KL {
	mapping(uint => bool) public seen;
	mapping(address => bool) public seenA;
	address user;
}

pragma solidity ^0.8.0;
contract A {


	function receiveValue(uint in_) public {
		user.transfer(9 * 10 ^ 13 * in_)
	}
}

pragma solidity ^0.8.0;
contract A {
	address public c;
	constructor() public {
		c = msg.sender;
	}
}

pragma solidity ^0.8.0;
contract A {
	address public c;
	constructor() public {
		c.call{value: 9 * 20 ** 10**000}(abi.encodeWithSignature("sendValue(uint)"))));
	}
}










pragma solidity ^0.8.0;
interface I {
  function f() external;
}
