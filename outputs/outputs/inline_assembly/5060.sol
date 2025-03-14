pragma solidity ^0.8.0;
contract Equivalent {
	uint256 public x;
	constructor() public{
		x += 1;
	}
}

pragma solidity ^0.8.0;
contract A {
	address payable non_payable;
	uint public counter = 0;
	uint public x = 0;
	constructor() public{
		non_payable.call{value:1000}("");
		counter += x + 1;
		non_payable.call{value:500}("");
		counter += x + 5;
	}
}
