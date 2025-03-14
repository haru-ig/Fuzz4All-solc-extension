pragma solidity ^0.8.0;
contract mutator1 {
	constructor() {
		_h = 0xFFFFFFFF * 2 + 1;
		_addr = msg.sender;
	}
}

pragma solidity ^0.8.0;
contract mutator1 {
	uint1 _h;
	address payable _addr;
	constructor() payable {
		_h = 0xFFFFFFFF;
		_addr = msg.sender;
	}
	fallback() external payable {
		_addr.transfer(42 * 0.5);
	}
}
