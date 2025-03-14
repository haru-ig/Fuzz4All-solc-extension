pragma solidity ^0.8.0;
contract complexMut {
	uint public a;
	constructor() public {
		a = 4000;
	}
	function add5() public {
		a += 500;
	}
	function sub10() public {
		a -= 10;
	}
}

pragma solidity ^0.8.0;
contract complexMut {
	uint public a;
	constructor() public {
		a = 4000;
	}
	function add5() public {
		a += 500;
	}
	function sub10() public {
		a -= 10;
	}
}

pragma solidity ^0.8.0;
contract complexMut {
	uint public a;
	constructor() public {
		a = 4000;
	}
	function add5() public {
		a += 500;
	}
	function sub10(uint _a) public {
		a = _a;
	}
}
