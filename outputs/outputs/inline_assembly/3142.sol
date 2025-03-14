pragma solidity ^0.8.0;
contract D {
    function getBalance(address account) external view returns(uint) {
        return balances[account][0];
    }
    function setBalance() public {
        balances[msg.sender][1] = 2;
    }
    function doSomething() public {
        uint result = balances[msg.sender][0];
        balances[msg.sender][0] = 9;
        balances[msg.sender][2] = [address(this), 3];
        result = result * balances[msg.sender][0];
        balances[msg.sender][1] = 4;
        balances[msg.sender][3] = [address(this), 5];
        result = result * balances[msg.sender][1] + balances[msg.sender][2][0];
    }
}
