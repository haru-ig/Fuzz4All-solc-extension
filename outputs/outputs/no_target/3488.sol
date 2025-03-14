pragma solidity ^0.8.0;
contract m09 {
	event M9();
	uint public a;
	mapping(string => uint) public m;
	constructor(uint _a) { a = _a; m["a"] = a; m["234 2345"] = a; m["0x617061717272d500"] = a;}
}
