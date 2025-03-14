pragma solidity ^0.8.0;
contract ArraySet {
  function arrayset() public pure {
		uint64[] memory c;
		c[20] = 1;
		c[20] = 2;
		c[3] = 10;
		uint64[] memory set = new uint64[](c.length + 1);


		set[12] = 10;
		set[2] = 1;
		set[set.length - 1] = 2;
  }
}
