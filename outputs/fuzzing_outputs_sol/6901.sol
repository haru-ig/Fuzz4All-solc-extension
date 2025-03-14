pragma solidity ^0.8.0;
contract Caller {
    address payable fallbackFunctionAddress;

    fallbackFunctionAddress = address(new CallerWithFallback());

    function transfer() public payable {
        fallbackFunctionAddress.transfer();
    }
}
contract CallerWithFallback {
  address payable fallbackFunctionAddress;


  function transfer() public payable {
    fallbackFunctionAddress.transfer();
  }
}
