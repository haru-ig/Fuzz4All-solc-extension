pragma solidity ^0.8.0;
contract m105 {
	event M102();
	uint public a;
	mapping(bytes32 => uint) public m;
	mapping(bytes32 => uint) public mm;



	constructor(uint _a) { a = _a;  m["1"] =  1;  m["9e00"] = 5;  m["35"] = 2; }
}
