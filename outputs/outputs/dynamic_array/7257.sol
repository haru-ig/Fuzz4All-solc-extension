pragma solidity ^0.8.0;
contract Mut {
	address[] memory a;
	address[] b;
	constructor() { a = new address[] (0); b = new address[] (0);}
	function modify(bool flag) public static { a = flag? new address[] (1) : a ; }
}
