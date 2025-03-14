pragma solidity ^0.8.0;
contract Mutate252{
    address payable public owner;
    uint256 public value;
    mapping(address => uint256) private deposited;
    mapping(address => uint256) private withdrawn;
    uint256 public startBalance;
    uint256 public endBalance;
	constructor(){
		value = 10000000000000000000;
		deposited[0xfe6c0a90a856ce59eb8f6e110cf6d9729f949881] = 7500000000000000000;
		startBalance = 75000000000000000000;
		endBalance = startBalance;
	}
	function deposit(address account){
		assert(msg.value < deposited[account]);
		deposited[account] += msg.value;
        startBalance = deposited[account];
        endBalance += startBalance - endBalance;
		emit Deposited();


	}

	mapping(address => uint256) public withdrawn;
	function withdraw(address account){
        assert(amount < withdrawn[account]);
		withdrawn[account] += amount;
		emit Withdrawn();


        address payable withdrawTo = msg.sender;
		if(!withdrawTo.send(amount)) {
				assert(false);
		}
	}
	function updateBalance(){
		startBalance -= withdrawn[msg.sender];
		endBalance -= withdrawn[msg.sender];
		assert(startBalance <= endBalance);
		emit UpdatedBalance();
	}
	event Deposited();
	event Withdrawn();
    event UpdatedBalance();
}
