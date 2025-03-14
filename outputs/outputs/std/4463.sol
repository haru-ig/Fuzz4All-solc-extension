pragma solidity ^0.8.0;
contract MyContract
{
	struct AddressList
		{
		address addrOfOne;
		address addrOfTwo;
		}

	AddressList a;
	event LogA(address source);
	function f() public {
		a = AddressList(address(0));
		emit LogA(a.addrOfOne);
		a.addrOfOne;
		emit LogA(a.addrOfTwo);
		a.addrOfOne;
		}
	}

pragma solidity ^0.8.0;
contract MyContract
	{
	uint[4] public test;
	}
