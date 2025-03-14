pragma solidity ^0.8.0;



contract EtherealToken {
    event LogTransfer(address sender, address receiver);

    uint public balance;
    address public account0;
    address public account1;
    address public account2;
    uint public amount0 = 10000;
    uint public amount1 = 20000;
    uint public amount2 = 30000;
    address[] public recipients;

    constructor() {
        balance = 0;
        account0 = msg.sender;
        account1 = msg.sender;
        account2 = msg.sender;
        recipients[0] = address(this);
        recipients[1] = address(this);
        recipients[2] = address(this);
    }

    function balanceOf(address _account) external view returns (uint balance) {
        return _balances[_account];
    }

    function transfer(address _to, uint _amount) external {
        _transfer(_to, _amount);
    }

    function push() external {
        uint addAmountToAmount1;
        uint subtractAmountToAmount0;
        addAmountToAmount1 = addAmountToAmount1.add(amount1);
        subtractAmountToAmount0 = subtractAmountToAmount0.sub(amount0);
        uint totalSent;
        totalSent = addAmountToAmount1.sub(subtractAmountToAmount0);
        balance += totalSent;
        for (uint256 i; i < 3; i++) {
            recipients[i].transfer(totalSent);
        }
    }

    function pop() public payable {
        if (balance0 >= amount1) {
            if (msg.sender == account0) {
                uint addAmountToAmount0;
                addAmountToAmount0 = msg.value.add(amount0);
                balance0 += addAmountToAmount0;
            } else if (msg.sender == account1) {
                uint subtractAmountToAmount0;
                subtractAmountToAmount0 = msg.value.sub(amount1);
                balance0 -= subtractAmountToAmount0;
            } else if (msg.sender == account2) {
                uint addAmountToAmount0;
                uint subtractAmountToAmount1;
                addAmountToAmount0 = msg.value.add(amount0);
                subtractAmountToAmount1 = msg.value.sub(amount1);
                balance1 += subtractAmountToAmount1;
                balance0 -= addAmountToAmount0;
            }
