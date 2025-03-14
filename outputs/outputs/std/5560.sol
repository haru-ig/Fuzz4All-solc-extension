pragma solidity ^0.8.0;
contract Mutate70{
	address ad;
	address ed;
	uint256 x;
	uint[21] y;
	uint[21] z;
	constructor(address ad, address ed) {
		ad = ad;
		ed = ed;
	}
	function test() public {
		x = x;
		x = x;
		address e = ed;
		ed = x;
		z[0] = z[0];
		z[5] = 99;
		this.test();
		if (x > 0){
			address t = x;
			x = x;
			x = x;
		}
		x = x;
		if (x > 0){
			this.test();
			this.test();
			t = x;
			x = x;
			x = x;
		}
	}
}
