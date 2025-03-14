pragma solidity ^0.8.0;
contract Mutant1 {
  uint256 c;
  uint256 x;
  uint256 x_before;
  uint256 y;
  uint256 a;
  uint256 b;
  address _self;
  event ReceivedEther(address, uint256);
  event ReceivedToken(address, uint256);
  event NewA(uint256);
  event NewB(uint256);
  event NewX(uint256);
  constructor () {
    c = 1;
    x = x_before;
    a = 2;
    b = 5;
  }
  receive() external {
    emit ReceivedEther(msg.sender, msg.value);
  }
  function transact() public returns (bool) {
    x = a;
    emit NewA(a + _self.balance);
    b = b / a;
    emit NewB(b);
    c = c + t + (msg.value * 5) / a;
    emit NewX(c);
    return true;
  }
  fallback() external payable { }
  function() external payable { emit ReceivedToken(msg.sender, msg.value); }
  function selfTransfer(address to) public returns (bool) {
    _self = to;
    return true;
  }
  function callTransfer(address to) public returns (bool) {
    _self = to;
    a_ = a_;
    return true;
  }
}
