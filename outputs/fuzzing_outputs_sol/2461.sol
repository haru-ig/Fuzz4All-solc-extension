pragma solidity ^0.8.0;
contract A {
  address payable receiver;
  fallback() public payable returns (address payable) {
    receiver.transfer(address(0).balance);
  }
}
contract B is A {
  function fallback() public {
    receiver.transfer(address(0).balance);
  }
}
