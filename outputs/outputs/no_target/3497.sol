pragma solidity ^0.8.0;
contract m102 {
	uint public a;
	constructor(uint _a) { a = _a;}
	event M102(string, uint);
	function f(uint _b) internal { m102.M102("test", _b+1); }
}
