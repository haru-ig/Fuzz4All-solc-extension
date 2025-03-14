pragma solidity ^0.8.0;
contract BackwardCompatibility {
  uint public _contract;

  function __BackwardCompatibility__() { _contract = address(msg.sender); }
  function transfer(uint) public {
    uint senderAmount = address(this).balance;
    require(msg.sender == _contract || block.timestamp < _contract.creationTime);
    selfdestruct(msg.sender);
    require(address(this).balance == senderAmount);
  }
  function call() public constant { revert(); }
  function send(uint) public payable {
    uint senderAmount = address(this).balance;
    require(msg.sender == _contract || block.timestamp < _contract.creationTime);
    super.send(senderAmount);
    require(address(this).balance == senderAmount);
  }
  function receive() public payable {
    bool success;
    assembly {
      success := call(gas, msg.sender, 0, add(mload(0), mload(0)), 0, 0) == 0
      if0 return(success)
    }
  }
}
contract Caller is BackwardCompatibility {
  function callContract() public {
    Caller.transfer(address(this).balance);
  }
}
