pragma solidity ^0.8.0;
contract Memory1 {
  constructor () public {
    address memoryOfAddress;
  }
}

pragma solidity ^0.8.0;
contract Memory1 {

	contract A {
		address public account;
		constructor() public {
			selfdestruct(account);
		}
	}
	address memoryOfAddress;
	constructor () public {
		Selfdestruct;
	}
}
