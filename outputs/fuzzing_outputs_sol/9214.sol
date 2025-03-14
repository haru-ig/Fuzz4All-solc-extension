pragma solidity ^0.8.0;
contract MutatedCaller {
  address public _receiver;
  address payable public _sender;
  uint256 private _balance;
  uint256 public _total = 0;
  constructor(address payable _address, uint256 _balance) {
    _receiver = _address;
    _sender = _address;
    _balance = _balance;
  }
  receive() external payable {
    _balance = _balance + msg.value;
    _total++;
  }
  function send(MutatedCallerFallback _receiver_) {
    _sender.call{value: msg.value}("");
    _receiver_._receiver.call{value: msg.value}("");
    _sender.call{value: msg.value}("");
    _receiver.call{value: 0}{value: 0}("");
    _sender.call(abi.encodeWithSignature("fallback()"));
    (_receiver_).fallback.value(msg.value).fallback {value: 0}{value: 0}("");
    (MutatedCallerFallback _sender_).fallback {value: 0}{value: 0}("");
    _sender_.receive {value: 0}{value: 0}("");
  }
}
