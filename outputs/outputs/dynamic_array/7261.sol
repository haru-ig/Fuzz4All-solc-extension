pragma solidity ^0.8.0;
contract Mut {
	address[] memory a;
	constructor() { address[] storage b = a;}
}
