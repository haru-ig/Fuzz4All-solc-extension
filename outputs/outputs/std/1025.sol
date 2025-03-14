pragma solidity ^0.8.0;
contract ArrayMut4 {
	constructor() { }
	function swap(uint256 _a, uint256 _b) public pure returns(uint256 temp){
		uint256 temp1;
		(int256 temp2) = _a - _b;
		if (temp2 < 0) {
			temp1 = _a;
		}
		return temp1;
	}
}
