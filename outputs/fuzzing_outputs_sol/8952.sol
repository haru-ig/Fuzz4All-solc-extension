pragma solidity ^0.8.0;
abstract contract CallContract {
  constructor() {
    __Caller__caller_fallback__();
  }
  function __Caller__caller_fallback__() internal payable {}
  function callContract(address contractAddress) public payable {
    contractAddress.call{value: address(this).balance}("");
  }
}
