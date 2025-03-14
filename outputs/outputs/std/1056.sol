pragma solidity ^0.8.0;
contract ArrayGen {
	function array(uint64[7] memory _r) public pure {
		uint64[] memory arr = new uint64[](3);
		_r[3] = 2;
		_r[4] = 0;
		_r.length = 2;
		arr[1] = 1;
		arr[0] = 2;
		arr[2] = 3;
		_r[2] = 3;
	}
}
