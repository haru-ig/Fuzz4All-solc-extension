pragma solidity ^0.8.0;
contract L16 {
    address payable alice;
    mapping (address => uint) public balance;
    function addToBalance(uint amt) public {
        balance[address(this)] += amt;
    }

    function withdrawBalance(uint amt) public {
        uint balanceBeforeWithdraw = balance[address(this)];
        balance[address(this)] -= amt;
        require(balance[alice] >= amt, "Not enough fund");
        balance[address(this)] += balanceBeforeWithdraw - amt;
    }

    function claimPayable() public onlyOwner {
        uint payableBalance = address(this).balance;
        require(alice.balance >= payableBalance, "Not enough balance");
        alice.transfer(payableBalance);
    }

    function setAccount(address _account, uint _amount) public onlyOwner {
        if (_amount <= balance[_account]) {
            balance[_account] -= _amount;
            balance[_account] += _amount;
            return;
        }

        balance[_account] = 0;
    }
}
