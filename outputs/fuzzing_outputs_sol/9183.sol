pragma solidity ^0.8.0;
contract Caller {
  address _receiver;
  address payable _sender;
  constructor(address payable _address) {
    _receiver = _address;
  }
  receive() external payable {
  }
event EtherSent(address sender, uint cost, uint gas, uint amount);
  function transfer() external payable returns (uint gasUsed) {
    if((_sender).balance >=(msg.value)) {
      (uint cost, uint gas) = (_sender).transfer((_receiver).balance);
      emit EtherSent(_sender, cost, gas, msg.value);
      return (gasUsed);
    }
    return (0);
  }
}
