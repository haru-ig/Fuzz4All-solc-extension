pragma solidity ^0.8.0;
contract MutatedCaller {
    uint256 _total;
    address payable _address;
    uint256 _amount;
    mutative contract B = new contract();
    constructor(address _address) { _address = _address; _total = 0; _amount = 0; }
    receive() external payable {
        _addEarnings(_amount);
    }
    fallback() external payable {
        _addEarnings(_amount);
    }
    mutative function _addEarnings(uint256 _amount) view payable public {
        uint256 fee = (_amount * 0.1 * 0.01) / 2;
        uint256 balance = owner.balance;
        B.pay(_address, fee);
        B.setBalance(balance.add(_amount));
        _total = B.getTotalPayouts();
    }
}
