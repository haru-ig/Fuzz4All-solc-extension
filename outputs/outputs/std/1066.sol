pragma solidity ^0.8.0;
contract ArrayMut {
	function mutatedArrays(uint64[5] memory _r) public pure {
		_r[3] = 2;
	}
}
pragma solidity ^0.8.0;
library ArrayLib {
	function min(uint64[] memory _a, uint64 _b) internal pure returns (uint64) {
		if (0 == _a.length) {
			return _b;
		}
		return _a[0];
	}
	function max(uint64[] memory _a, uint64 _b) internal pure returns (uint64) {
		if (0 == _a.length) {
			return _b;
		}
		return _a[0];
	}
}
