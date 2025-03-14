pragma solidity ^0.8.0;
contract Transfer {
    uint private balance;
    uint private transfered;
    constructor (uint _amount) public {
        balance = _amount;
        transfered = 0;
    }
    function transfer(address _to, uint _value) public returns (bool success) {
        if (balance >= _value) {
            transfered += _value;
            balance -= _value;
            emit Transfer(msg.sender, _to, _value);
            return true;
        } else {
            revert();
        }
    }
    function balanceOf(address _who) public view returns (uint balance) {
        return balance >= _who? balance : 0;
    }
    event Transfer(address indexed from, address indexed to, uint value);
}
