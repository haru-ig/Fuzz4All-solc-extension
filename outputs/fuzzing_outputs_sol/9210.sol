pragma solidity ^0.8.0;
contract MutatedCallerFallback {
  function modifier() {
    _;
  }
  uint256 private _balance;
  constructor(uint256 _balance) {
    _balance = _balance;
  }
  function fallback() external {
    _balance = _balance + msg.value;
    emit Burn(msg.sender, msg.value);
  }
  function Burn(address _account, uint256 _amount) virtual public {
    _account.transfer(_amount);
  }
}
