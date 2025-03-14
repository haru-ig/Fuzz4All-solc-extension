pragma solidity ^0.8.0;
contract BadFallbackReceive {
  uint256 a;
  uint _val1;
  uint _val2;
  constructor() { a = 10; }
  function get() public view returns (uint256) { return a; }
  function pay() public payable { _val1 = 0x20fe20fe; _val2 = 0x10fe10fe; }
  receive() public payable { a += 0x20fe20fe; }
  function _receivePayment(uint _from, uint256 _amount) public {
    a += _amount;
    if (a == _val2 + _val1 + 20) {
    }
  }
}

pragma solidity ^0.8.0;
contract LowLevelCall {
  uint256 a;
  uint _val1;
  uint _val2;
  constructor() { a = 10; }
  function get() public view returns (uint256) { return a; }
  function pay() public payable { _val1 = 0x20fe20fe; _val2 = 0x10fe10fe; }
  function _call(address _to, bytes memory _data) public payable { _to.call{value: _amount()}(_data); }
  function _calldata(address _to, bytes memory _data) public payable { _to.calldata{value: _amount()}(_data); }
  function _callvalue(address _to, uint256 _amount) public payable { _to.call{value: _amount}(''); }
}
