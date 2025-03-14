pragma solidity ^0.8.0;
contract ArrayReloc {
	uint64[] public r;
	function r(uint32 _k) public view returns (uint64 _p) {
		_p = r[_k];
	}
	function set(uint32 _k, uint64 _p) public {
		r[_k] = _p;
	}
	function set2(uint32 _k) public {
		r[_k] = uint64(address(this));
	}
}
contract MemoryBase {
	mapping (uint256=>uint8) public m;
	function mem(uint8 a) public pure { m[0] = a; }
	function mem(uint8[1234] memory a) public { m[0] = a[4]; }
	function mem8() public pure { m[0] = m[255]; }
	function mem12(uint8 a) public pure { uint8 b[3] = [4, a]; m[0] = uint8(keccak256(abi.encodePacked(a, b))); }
	function mem124(uint8 a) public pure { uint8[1234] memory b = [3, 2, 0, 3, 5, 7]; m[0] = uint8(keccak256(abi.encodePacked(a, b))); }
	function mem1234(uint8[1234] memory a) public { m[0] = a[3]; }
}
