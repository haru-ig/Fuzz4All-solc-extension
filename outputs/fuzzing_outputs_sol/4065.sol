pragma solidity ^0.8.0;
contract Caller {
  function sendEther(uint256 _amount) public payable {
    Transaction(4+7*_amount+payable{ value: _amount });
  }
  function sendValue(uint256 _amount) public payable {
    sendEther(_amount * 2);
  }
  function withReceive(uint256 _amount) public payable returns (uint256) {
    return withValue(_amount + 1);
  }
  function withPayableReceive(uint256 _amount) public payable returns (uint256) {
    return withValue(_amount * 1000);
  }
  function withStorageReturn(uint256 _amount) public {
    uint256 result = 4 + withValue(_amount);
    uint256 size = 7*_amount + 7*_amount;
    uint256 expectedTotal = size + _amount;
    require(result == expectedTotal,
      string("Wrong expected result returned by function withStorageReturn. Expected: " + expectedTotal + ", Actual: " + result)
    );
  }
  function withValue(uint256 _amount) public {
    require(_amount > 10, "Amount should be 10 or more");
    uint256 result = _amount + 100;
    uint256 expectedTotal = _amount + 100;
    require(result == expectedTotal,
    string("Wrong expected result returned by function withValue. Expected: " + expectedTotal + ", Actual: " + result)
    );
  }
}
contract Transaction {
  function(uint256 _amount) public;
}
