pragma solidity ^0.8.0;
 contract Caller {
  function testCaller(address _address,uint _amount) public {
    EtherInterface erc = EtherInterface( _address);
    erc.transfer(msg.sender, _amount);
  }
  receive () external payable {}
}
