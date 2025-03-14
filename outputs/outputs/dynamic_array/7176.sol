pragma solidity ^0.8.0;
contract Modified {
	uint[] memory a;
	constructor() public {
		a.push(1);
	}
}

pragma solidity ^0.8.0;
contract Overwritten {
	uint[] memory a;
	constructor() public {
		a = [10, 20, 30];
	}
}
