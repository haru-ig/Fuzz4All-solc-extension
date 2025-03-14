pragma solidity ^0.8.0;
contract Caller2 {
    function pay() public payable returns (address payable) {
      return payable(bytes2address(0));
    }
    function getPayload() public pure returns(address payable) {
      return payable(bytes2address(0));
    }
}
