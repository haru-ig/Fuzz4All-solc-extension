pragma solidity ^0.8.0;
contract ArrayMut {
  function array() public pure {
		uint64[] memory r;
		r[2] = 1;
		r[0] = 1;
		r[4] = 0;
		r[3] = 2;
	}
}
