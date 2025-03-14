pragma solidity ^0.8.0;
contract mutator {
	uint public i = 0;
	constructor() public {
		i = 0;
	}
	mapping(address => uint) public balance = map(uint(1e18));
	function map() public {
		mapping(uint => uint) public m = map(0);
	}
	function map(uint _x) public pure returns(uint _m) {
		if(_x == 0) {
			_m = 1;
		} else {
			map(_x - 1);
			_m = m[2];
		}
	}
}
