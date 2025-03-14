pragma solidity ^0.8.0;
contract Mutate10{
	address ad;
	address ed;
	uint256 x;
	uint[23] y;
	uint[23] z;
	constructor(address ad, address ed) {
		ad = ad;
		ed = ed;
	}
	function test() public {
		x = x;
		if (x >> 8 < 1){
			x = x;
			this.test();
		}else {
			this.test();
		}
		ed = ed;
		this.test();
	}
}
