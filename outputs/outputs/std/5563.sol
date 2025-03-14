pragma solidity ^0.8.0;
contract Mutate31{
	address ad;
	address ed;
	uint256 x;
	uint[22] y;
	uint[22] z;
	constructor(address ad, address ed) {
		ad = ad;
		ed = ed;
	}
	function test() public {
		x = x;
		x = x;
		ed = ed;
		this.test();
		if (x > 0){
			x = x;
			this.test();
			this.test();
		}
	}
}
