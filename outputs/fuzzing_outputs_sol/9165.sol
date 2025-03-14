pragma solidity ^0.8.0;
contract Caller {
  address payable _sender;
  address _contract;
  constructor(address payable _address) {
    _receiver(address(0), _address);
  }
  function _receiver(address _a1, address payable _a2) internal {
    _sender = payable(_a2);
  }
  receive() external payable {
  }
}
