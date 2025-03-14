pragma solidity ^0.8.0;
contract m103 {
	event M102();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a) { a = _a;   }
}
contract m104 {
	event M102();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a) { a = _a; m["-35"] = 1;  m["9e00"] = 34;  m["35"] = 2;   m["234"] = 3; }
}
