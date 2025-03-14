pragma solidity ^0.8.0;
contract CallerExample2 {
  address payable lastAddress;

  function callerReturnTrue() public pure returns(bool) {
    lastAddress.transfer(address(new CallerExample).balance);
    return true;
  }
}
