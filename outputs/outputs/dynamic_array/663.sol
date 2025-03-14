pragma solidity ^0.8.0;
contract test61 {
	uint n;
	struct A {
		uint[] x;
	}
	function test() public returns (bool) {
		A memory aa = A({x : new uint[](n)});
		return (aa.x.length > 0) && (aa.x.length <= 1);
	}
}
contract test62 {
	uint n;
	struct A {
		uint[] x;
	}
	function test() public returns (bool) {
		A aa;
		aa.x = new uint[](n);
		return (aa.x.length > 0) && (aa.x.length <= 2);
	}
}
