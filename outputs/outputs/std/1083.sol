pragma solidity ^0.8.0;
contract ArrayMut {
  function array() public pure {
		uint256[] memory s;
		s[2] = 1;
		s[0] = 1;
		s[4] = 0;
		s[3] = 2;
	}
}
