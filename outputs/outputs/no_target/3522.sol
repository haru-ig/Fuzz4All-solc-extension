pragma solidity ^0.8.0;
contract m105 {
	event M102();
	uint public a;
	mapping(bytes32 => uint) public m;
	mapping(bytes32 => uint) public mm;
	constructor(uint _a) public payable { a = _a;   mm["1"] = 1;  mm["9e00"] = 5;  mm["35"] = 2;   mm["234"] = 3; }
}
