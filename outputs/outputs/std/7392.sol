pragma solidity ^0.8.0;
contract MyAccount {
    uint public accountNumber;
    uint public balance;


    address public owner;

    modifier OnlyOwner {
        require(msg.sender == owner, "Contract owner only");
        _;
    }

    modifier NotOwner {
        require(msg.sender!= owner, "Contract owner only");
        _;
    }

    constructor () {
        owner = msg.sender;
    }

    function balanceOf(address account) public view returns (uint) {
        return balances[account];
    }

    function transfer(address target, uint amount) public NotOwner returns (bool) {
        if (amount == 0)
            return false;

        balances[msg.sender] += amount;
        balances[target] -= amount;
        return true;
    }
}
