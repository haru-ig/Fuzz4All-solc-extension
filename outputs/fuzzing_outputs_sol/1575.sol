pragma solidity ^0.8.0;
contract MyContract {
  uint public fee = 0.0001 ether;
  receive() external payable {


    (bool success, ) = payable(address(msg.sender)).call{ value: msg.value }("");
    require(success == false);
  }
}
