pragma solidity ^0.8.0;
contract Multiprecision {
	struct Array {
		uint256[] f;
	}
	constructor(int[]) public { }
	function mul(int[]) public pure returns (Array memory) {
		Array memory b;
		b.f.push(3);
		for(uint i = 0 ; i < _x.length ; i++){
			b.f.push(_x[i]*_x[i]+1);
		}
		return(b);
	}
}
