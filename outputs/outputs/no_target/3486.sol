pragma solidity ^0.8.0;
contract m09a {
	event M9(string value);
	mapping(string => uint256) constant private m;
	constructor() { m["a"] = 1; m["234 2345"] = 2; m["0x617061717272d500"] = 4;}
	function my(string memory a) public view returns (uint256) { return m[a]/2; }
}
contract m09b {
	event M9(string value);
	mapping(string => uint256) private m;
	constructor() { m["a"] = 1; m["234 2345"] = 2; m["0x617061717272d500"] = 4;}
}
