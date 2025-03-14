pragma solidity ^0.8.0;
contract SendEtherCaller7 {
  uint8 _amount;
  bool hasValue;
  address _address;
  constructor() {
  }
  receive() external payable {
    address payable to;
    (to, ) = abi.decode(msg.data, ("address", "uint8"));
    hasValue = true;
    _amount = 0;
    _address = to;
  }
  fallback() external payable {
    _checkCondition();
  }
  receive() external payable {
    if (_amount > 0) {
      hasValue = true;
      address payable from;
      (from, ) = abi.decode(msg.data, ("address", "uint8"));
      _amount = 0;
    }
    _checkCondition();
  }
  function _checkCondition() internal {
    if (hasValue) {
    }
  }
}
contract ReceiveEtherCaller {
  address payable _address;
  uint8 _amount;
  constructor() {
  }
  receive() external payable {
  }
}

pragma solidity ^0.8.0;
interface IERC20
{
  function transfer(address to, uint256 amount) external returns (bool);

  function approve(address spender, uint256 amount) external returns (bool);

  function transferFrom(address from, address to, uint256 amount) external returns (bool);

  function totalSupply() external view returns (uint256);

  function balanceOf(address account) external view returns (uint256);
}
contract BalanceOfCaller {
  address balanceOfCaller;
  constructor(uint256 _amount) {
    balanceOfCaller = msg.sender;
  }
  function getBalance() returns (uint8) {
    return uint8(balanceOfCaller.balance);
  }
}
contract WithdrawCaller5 {
  bool hasValue;
  address payable _address;
  uint8 _amount;
  uint _balance;
  constructor() {
    address payable to;
    (_balance, ) = abi.decode(msg.data, ("uint8", "uint"));
    _address = to;
  }
  function withdraw() external {
    if (msg.sender == balanceOfCaller) {
      hasValue = true;
    }
    else {
      _address.sendValue(bytesToUInt256(msg.data));
    }
