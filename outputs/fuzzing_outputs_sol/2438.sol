pragma solidity ^0.8.0;
contract CallerMutator2 {
  address payable receiver2;
  function pay() payable {}
  function () public payable {
    receiver2.transfer(address(this).balance);
  }
}
