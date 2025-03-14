pragma solidity ^0.8.0;
contract Caller7 {
  function _receiver(address _address) private {
    selfdestruct(_address);
  }
  receive() external payable {
  }
}
