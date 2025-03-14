pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutator5 {
	struct mutator5 {
		uint h;
		uint[3] b;
		uint[3][5] a;
	}
	mutator5 public data;
	constructor() {
		for (uint256 i = 0;i < 10;i++) {
			data.b[0];
			0;
			(data.b[0]);
		}
	}
	modifier modifier1 () immutable {

		_;
		assertEq1(uint(0), data.a[1][1].b[2]);
	}
	function mutate4() public modifier modifier1 () {
	 	for (uint256 i = 0;i < 10;i++) {
			_;
			(data.a[1][i][1]);
	  	}
  	}



	function mutate5() public modifier modifier1 () {
	 	for (uint256 i = 0;i < 10;i++) {
			(data.a[2][1][0].a[1][0]).i;
			(data.a[2][i].b[1]);
  	}
  	data.a[2][1][0].i;
	}
	function assertEq1(uint e1, uint e2) private pure {
		require(abi.decode(e1, (uint)), "equal");
		require(abi.decode(e2, (uint)), "not equal");
    }
}
