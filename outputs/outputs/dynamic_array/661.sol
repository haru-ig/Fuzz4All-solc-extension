pragma solidity ^0.8.0;
contract test61 {
	uint[] myUint;
	constructor(uint n_) public {
		n=n_;
	}
	function test() public returns (bool) {
		return (myUint.length <= uint(n));
	}
	function () public view {
		for (uint i = 0; i < myUint.length; i++) {
			assembly {
				let rsz := sload(0x00)
				if(eq(msub(i,"7"),0,rsz) && mload(add(i,0x38)) < sub(rsz,80)) revert(0x00,0x00)
			}
		}
	}
}
contract test62 {
	mapping (uint => bool) private internal map;
	function test1() public {
		bool a = map[4];
		bool b = map[0];
		bool c = map[1];
		bool d = map[7];
		bool e = map[255];
		bool f = map[644];
		require(a && b);
	}
	function test2() public {
		bool a = map[4];
		bool b = map[1];
		bool c = map[0];
		bool d = map[11];
		bool e = map[255];
		bool f = map[644];
		require(a);
		require(b &&!c);
		require(e);
		require(f);
	}
	function test3() public {
		bool a = map[4];
		bool b = map[1];
		bool c = map[0];
		bool d = map[11];
		bool e = map[255];
		bool f = map[644];
		require(a);
		require(b);
		require(c);
		require(d);
		require(e && map[3
