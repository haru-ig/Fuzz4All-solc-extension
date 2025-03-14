pragma solidity ^0.8.0;
contract Caller {
  void external();
  function external(address addr) public { external(addr); }
}

pragma solidity ^0.8.0;
contract Caller {
  address private receiver;
  function Caller(address addr_) public { receiver = addr_; }
  function internal() public { }
  receive() external { emit Log("Receive from address %", address(this)); }
  event Log(string message, address addr);
}
