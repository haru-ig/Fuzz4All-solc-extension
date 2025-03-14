pragma solidity ^0.8.0;
contract BurningWithFallback {
    function burnFrom( address account, uint256 amount) public {
        uint256 currentBalance = balanceOf(account);
        if (currentBalance >= amount) {
            _balances[account] = currentBalance - amount;
        } else {
            _balances[account] = 0;
        }
    }
    function withdraw() public {
        uint256 amount = balanceOf(msg.sender);
        msg.sender.transfer(amount);
    }
    address[] private _balances;
}


pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint256 private _value = 3;
    uint256 private _balance;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4566;
    }
    receive() external payable {
        _balance += _gasPrice;
    }
    fallback () external {
    }
    event TokenPaid();
}
