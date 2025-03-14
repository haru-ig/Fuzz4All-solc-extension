pragma solidity ^0.8.0;
contract test61 {
	uint[] memory a;
	uint[] memory b;
	function test() public returns (bool) {
		b = a;
		require((b.length > 0) && (b.length <= 2));
		b = new uint[](35000);
		if (block.number <= 100) {
			require(b.length < 10);
		}
		return true;
	}
}
contract test62 {
	uint[] memory a;
	uint[] memory b;
	function test() public returns (bool) {
		b = a;
		b["test"] = "hello!";
		uint[] memory c = new uint[](100);
		for (uint i = 0; i < c.length; i++) {
			c[i] = 1;
		}
		require((c.length > 0) && (c.length <= 10));
		b[49999] = 1;
		b.test["test"] = 7;
		uint[] memory d = new uint[](100);
		d[49999] = 1;
		b = d;
		b[49999] = 1;
		b.test["test"] = 7;
		if (block.number < 10) {
			return b.length > 0;
		}
		b = d;
		b[49999] = 1;
		b.test["test"] = 7;
		if (block.number < 10) {
			return b.length > 0;
		}
		b = a;
		b[49999] = 1;
		b.test["test"] = 7;
		if (block.number < 10) {
			require(b.length > 0);
		}
		return b.length > 0;
	}
}
contract
