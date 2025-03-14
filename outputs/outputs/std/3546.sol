pragma solidity ^0.8.0;
contract Test {
    constructor(
        _initialBalance,
        _minted
    ) {
        totalSupply_ = _initialBalance;
        balances_[msg.sender] = _initialBalance;
        allowed_[_addr][msg.sender] = _initialBalance;
    }
}
