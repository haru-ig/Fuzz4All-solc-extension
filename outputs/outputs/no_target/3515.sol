pragma solidity ^0.8.0;
contract m105 {
	event m102;
	uint public a;
	mapping(bytes32 => uint) public mm;
	constructor(uint _a) { a = _a;   mm[bytes32("", "1")] = 1;  mm[bytes32("", "9e00")] = 5;  mm[bytes32("", "35")] = 2;   mm[bytes32("", "234")] = 3; }
}
