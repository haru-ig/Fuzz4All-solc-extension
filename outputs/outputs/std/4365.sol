pragma solidity ^0.8.0;
contract EquivalentMutation
	{
	address address_1;
	address address_2;
	address address_3;
	address address_4;
	constructor() public { address_1 = msg.sender; address_4 = address(-1); }
	function EquivalentMutationAddress(address a) public
	{
	   if (a < address_2) { address_2 = a; }
	   else if (a == address_2) { EquivalentMutationAddress(12, 13); }
	   else { EquivalentMutationAddress(11, 12); }
	}
	}
