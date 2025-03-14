pragma solidity ^0.8.0;
contract Mut {
	address[] memory a;
	constructor() {
		a = new address[](0);
	}

}


pragma solidity 0.8.10 @author Squad;

contract P {
	mapping(address => string) public x;
	constructor() {
		x["0x000001100000000000000000000000000000000000000000000000000000002"];
	}
}
