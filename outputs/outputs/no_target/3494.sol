pragma solidity ^0.8.0;
contract m101 {
	event M101();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a) { a = _a; m["00"] = a; m["ab"] = a;  m["a"] = a;   m["-35"] = a;   m["9e00"] = a;   m["35"] = a;   m["234"] = a;}
}
