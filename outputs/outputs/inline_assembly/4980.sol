pragma solidity ^0.8.0;
contract simple2 {
	uint[4] data_private;
	constructor() {
		data_private[0] = msg.value;
		data_private[1] = msg.value + data[0] + data[1];
		data_private[2] = data[2]+data[1] + msg.value;
		data_private[3] = data[2]+data[1] + msg.value + data[3];
		data_public += 1;
		data_public += 1;
		data_public += 1;
	}
}

/**
```
***
*** Test a few examples
***
```
***
*** Test cases for contract simple1
***
***
***

pragma solidity ^0.8.0;
import 'https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/token/ERC20/ERC20.sol';
contract simple1 is ERC20 {
		function createERC20andTransferMoney(address _newAddres, uint amount, string memory _comment) public {

		uint balance = balanceOf(msg.sender);
		totalSupply_();
		balances();
		supply();
		recipient();
		msg.sender;
	delete();
    }
	transfer();
	transferFromTo();
	transferFromToS();
	transferFromToSTo();
	_mint();
}

***
*** Test cases for contract simple2
***
***
***

pragma solidity ^0.8.0;
import 'https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/master/contracts/utils/Address.sol';
contract simple2 is Address {
	mapping (address => bytes32) address_to_hash;
	mapping (address => uint) data;
	constructor(address a_) {
		address_to_hash[a_] = 1;
		data[a_] = 0;
	}
	function send() public {
		require(tx.origin!= msg.sender);
		address_to_hash[msg.sender] = 1;
		data[msg.sender] = 0;
	}
	function read() public { address_to_hash[msg.sender] = 1; data[msg.sender] += 1; }
	function write() public { address_to_hash[msg.sender] = 1; data
