pragma solidity ^0.8.0;
contract Array
	{
	function MutateAddress(uint a, uint b) public
	{
	  uint ab = a - b;
	assembly {
	  sstore(0, ab)
	  mstore(0, 0)
	}
}
