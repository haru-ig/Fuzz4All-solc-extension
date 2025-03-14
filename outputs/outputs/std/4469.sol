pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct s;
	MyStruct s2;
	IArray a;
	mapping(address=>uint) public balance;
	modifier onlySomeUser
		{if(msg.sender == s.arrayAddress)
			{
				_;
			}
			else
			{
				revert("Only some user");
			}
		}
	event LogA(address source, uint sum);
	modifier checkA (address source)
		{if(source == a.minAddress())
			{
				_;
			}
			else
			{
				revert("Not a minAddress");
			}
		}
	function f() public onlySomeUser checkA(s) {

		a.pushFirstElem(s);
		a.pushFirstElem(s);

		a.pushLastElem(s2);
		a.pushLastElem(s2);
		a.pushLastElem(s);
		a.pushLastElem(s2);
		a.pushLastElem(s);
		a.pushLastElem(s2);
		a.pushLastElem(s);
		a.pushLastElem(s);

		a.pushFirstElem(s);
		a.pushLastElem(s2);
		a.pushLastElem(s);
		uint sum = a.sum();
		balance[msg.sender] -= sum;
		balance[a.minAddress()] -= a.sum();
		a.popFirst();
		emit LogA(msg.sender, sum);

	}
	}
