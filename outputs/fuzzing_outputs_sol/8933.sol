pragma solidity ^0.8.0;
abstract contract CallerExample {
  function __BeforeCallExample__callContract(address contractAddress, bytes memory data) internal;
  function callContract(address contractAddress, bytes memory data) external payable {
    __BeforeCallExample__callContract(contractAddress, data);
  }
  function callContract2(address contractAddress, address contractAddress2, bytes memory data) external payable {
    __BeforeCallExample__callContract(contractAddress, data);
  }
  function __BeforeCallExample__callContract2(address contractAddress, address contractAddress2, bytes memory data) internal;
  function callContract3(address contractAddress, address contractAddress2, bytes memory data) public payable {
    __BeforeCallExample__callContract2(contractAddress, contractAddress2, data);
  }
}
