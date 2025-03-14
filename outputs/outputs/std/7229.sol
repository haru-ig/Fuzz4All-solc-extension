pragma solidity ^0.8.0;
contract StringMath
{
	struct S {
	  address from;
	  bytes32 to;
	  bytes32 data;
	}



	address[] public accounts;
	bytes32[] public contents;


	bool public isInitialized;
	event Account(address account);
	event Content(bytes32 content);
	event SetInitialized();
	constructor()
	{
	  accounts.length = 1;
	  contents.length = 1;
	  isInitialized = true;
	}
	fallback(bytes memory) public payable view override
	{
	  if (accounts.length == 5)
	  {
	    _msgSender() == 0xfe299c5394328a3164a62c8ca45bd7a1a6484a38;
	  }
	  else
	  {
	    emit Account(accounts[_msgSender()]);
	  }
	  emit Content(keccak256(abi.encodePacked(abi.encodePacked(accounts[_msgSender()]),abi.encodePacked(contents[_msgSender()]))));
	}
}
