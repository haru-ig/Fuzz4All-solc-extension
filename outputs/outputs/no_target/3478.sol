pragma solidity ^0.8.0;
contract m09 {
	constructor() {address(1).transfer(address(this).balance); }
}
contract m10 {
	uint256 private z;
	constructor(uint256 z_) {
		z = z_;
	}
	function isZero() public pure returns (bool) {
		return z == 0;
	}
}
contract m11 {
	mapping (uint256 => mapping(uint256 => uint256)) bar;
	uint256 foo(uint256 x, uint256 y) public {
		foo(0);
		uint256 z = bar[x][y];
	}

	function foo(uint256 z_) public returns (uint256 x)
	{
		x += z_; return x;
	}
}
contract m12 {
	uint256 private m;
	constructor() {m = 1;}
	function test() public returns (uint256 m) {return m; }
	function test_1() public returns (uint256 z) {return m; }
}
contract m13 {
	mapping(uint256 => uint256) public m;
	constructor(uint256 m_) public {
		m[3] = m_;
	}
}
contract m14 {
	constructor() public{
		emit M8();
		assembly { assembly { m5 = m6 }}}
	}
}
