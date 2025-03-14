pragma solidity ^0.8.0;
contract Caller {
  address payable receiver;
  address payable newAddress;
  constructor (address payable _receiver) payable {
    receiver = _receiver;
  }
  function pay() public payable returns (address payable) {
    newAddress = receiver;
    if (newAddress.isContract()) {
      bytes memory empty = "";
      (bool success, ) = (newAddress).call{value: msg.value}{data: empty}(empty);
    }
    return receive();
  }
  receive() external payable {}
  fallback() external payable {}
}
