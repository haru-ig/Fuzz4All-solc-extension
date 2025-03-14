pragma solidity ^0.8.0;
contract P4 {
	uint256 public y;
	uint256 x;
	function h1() public y {
		uint256 x_ret;
		if (x!= 0) {
			x_ret = h();
			if (x!= x_ret)
				revert();
		}
		return x_ret;
	}
	function h2() public returns (uint256) {
		uint256 x_ret;
		if (y!= 0)
			revert();
		if (x!= 0) {
			x_ret = h();
			if (y!= x_ret)
				revert();
		}
		return x_ret;
	}
}
