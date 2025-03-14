pragma solidity ^0.8.0;
contract ReceiveExample {
  address payable _payableAddress;

  function receive() payable {
    require(_payableAddress!= address(0));
    payable(_payableAddress).transfer(msg.value);
    revert();
  }

  constructor(address payable payableAddress) {
    _payableAddress = payableAddress;
  }
}
