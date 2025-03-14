pragma solidity ^0.8.0;
contract FallbackExample {
  function __Caller__caller() internal {}
  function callFunction(address contractAddress) public {
    address fallbackContractAddress = address(this);
    (bool success,, ) = address(contractAddress).call{value: msg.value}(abi.encodeWithSignature(this.fallback, fallbackContractAddress));
    assert(success);
  }
   function fallback(address fallbackAddress) external payable {
    emit FallbackCalled(fallbackAddress);
    assert(fallbackAddress == address(this));
  }
  event FallbackCalled(address _fallbackAddress);
}
contract CallExample is CallContract {
  constructor() {
    __Caller__caller();
  }
  function __Caller__caller() internal {}
  function callContract(address contractAddress) public payable {
    Contract.fallback.value(msg.value)();
  }
  function callFunction(address contractAddress) public payable {
    (bool success,, ) = contractAddress.call{value: msg.value}(abi.encodeWithSignature(this.fallback, address(this)));
    assert(success);
  }
  function fallback(address fallbackAddress) external payable {
    emit FallbackCalled(fallbackAddress);
    assert(fallbackAddress == address(this));
  }
  event FallbackCalled(address _fallbackAddress);
}
