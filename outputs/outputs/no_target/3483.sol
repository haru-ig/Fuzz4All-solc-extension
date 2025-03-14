pragma solidity ^0.8.0;
contract m09 {
	event M9();
	mapping(string => uint256) private m;
	constructor() { m["a"] = 1; m["234 2345"] = 2; m["0x617061717272d500"] = 4;}
}
