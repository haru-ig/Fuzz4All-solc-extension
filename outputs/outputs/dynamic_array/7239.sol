pragma solidity ^0.8.0;
contract Mod {
	struct s {
		s x;
	}
	s[] b;
	constructor() { address[] memory c = new address[](0); b = new s[](c.length); }
}

pragma solidity ^0.8.0;
library mod {
	struct s {
		uint x;
		s a;
	}
	s[] b;
	address[] c;
	address a;
	contract hhh {
		constructor() { address[] memory d = new address[](0); }
	}
}
