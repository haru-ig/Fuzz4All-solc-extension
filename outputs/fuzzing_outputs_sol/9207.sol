pragma solidity ^0.8.0;
contract FallbackCaller extends CallerFallback {
  function() public payable {
    _receiver.call{value: 3 ether}("");
    _sender.call{value: 100000000 ether}("1");
  }
}
