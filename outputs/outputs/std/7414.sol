pragma solidity ^0.8.0;
contract ArrayMutate {
	MutatedAccount[2] public accounts;
	mapping(uint => MutatedAccount) public account_to_id;
	address public beneficiary;
	constructor() {
		accounts = new MutatedAccount[](2);
		account_to_id[0] = accounts(0);
		account_to_id[1] = accounts(1);
		beneficiary=msg.sender;
	}
}
