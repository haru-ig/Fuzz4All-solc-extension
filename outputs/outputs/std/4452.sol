pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct s;
	event LogA(address source);
	}
pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address arrayAddress;
		}
	MyStruct s;
	event LogA(address source);
	}
pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct
		{
		address[] arrayAddresses;
		}
	MyStruct data;
	event LogA(address source);
	}
pragma solidity ^0.8.0;
contract MyContract
	{
	uint256[] myNums;
	event LogA(uint256[] source);
	constructor() public {
		data = MyStruct(address(0));
		data.arrayAddresses[0] = address(0);
		data.arrayAddresses[1] = address(0);
		emit LogA(data.arrayAddresses);
		data.arrayAddresses[0];
		}
	}

pragma solidity ^0.8.0;
contract MyContract
	{
	uint256[] myNums;
	event LogA(uint256[] source);
	constructor() public {
		data.arrayAddresses[0] = address(0);
		data.arrayAddresses[1] = address(0);
		emit LogA(data.arrayAddresses);
		data.arrayAddresses[0];
		}
	}
