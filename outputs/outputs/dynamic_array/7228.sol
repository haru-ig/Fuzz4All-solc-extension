pragma solidity ^0.8.0;
contract Good {
	int8[] a;
	constructor() { b = new int8[](0); }
	int8[] public b;
}

pragma solidity ^0.8.0;
contract Bogus {
	mapping(address => int8) public b;
	constructor() { b = new mapping(address => int8[](0)); }
}
contract Escaped {
	mapping(address => int8[]) b;
	constructor() { b = new mapping(address => int8[][](0)); }
}
