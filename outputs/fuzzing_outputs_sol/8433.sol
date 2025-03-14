pragma solidity ^0.8.0;
contract Caller {
  address payable caller;
  function pay() payable external {
    require(caller.balance >= address(this).balance, "Ether is too low");
    caller.transfer(address(this).balance);
  }
  function() external payable {
  }
}
