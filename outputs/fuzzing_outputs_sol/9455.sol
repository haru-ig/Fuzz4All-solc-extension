pragma solidity ^0.8.0;
contract ContractWithFallback6 {
  address payable contractAddress;
  address private receiver;
  constructor(address payable _address) {
    receiver = _address;
  }
  receive() external payable {
    contractAddress.transfer(msg.value - 3 * 10);
  }
  function fallback() external {
    contractAddress.call{value: msg.value}("");
    receiver.transfer(msg.value - 5 * 10);
  }
}

pragma solidity ^0.8.0;
contract ContractWithFallback7 {
  address private receiver;
  constructor(address payable _addr) {
    receiver = _addr;
  }
  receive() external payable {
    receiver.transfer(3 * 10);
  }
  function fallback() external {
    receiver.call{value: msg.value}("");
  }
}
