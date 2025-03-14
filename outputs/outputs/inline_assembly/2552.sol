pragma solidity ^0.8.0;
contract Comp1 {
	constructor() public {
		Comp4 storage a = new Comp4();

		a.add(1);

		a = a + 1;
	}
}


pragma solidity ^0.8.0;
contract Comp4Storage {
	uint256 _aStorage;
	constructor() public { _aStorage = 0; }
	function add(uint256 _b) public { _aStorage = _aStorage + _b; }
	function subtract(uint256 _b) public { _aStorage = _aStorage - _b; }
	function multiply(uint256 _b) public { _aStorage = _aStorage * _b; }
	function getAndChangeState(uint256 _b) public view returns (uint256){ return _aStorage; }
}

pragma solidity ^0.8.0;
contract Comp1Storage {
	constructor() public {
		Comp4Storage storage a = new Comp4Storage();

		a.add(1);

		a = a + 1;
	}
}


pragma solidity ^0.8.0;
contract Comp2 {
	constructor() public {
		Comp4Storage storage a = Comp4Storage(0);

		a.add(1);

		a = a + 1;
	}
}

pragma solidity ^0.8.0;
contract Comp11 {
    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event TransferSingle(address indexed from, address indexed to, address indexed user, uint256 amount, Enum.Enum1 indexed event1
