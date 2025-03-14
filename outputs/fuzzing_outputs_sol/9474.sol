pragma solidity ^0.8.0;
contract Fallback24 {
  function fallback() external payable override {
    throw;
  }
}


pragma solidity ^0.8.0;
contract EtherReceiverFallback15 {
  function fallback(address) public payable override {
    throw;
  }
  function fallbackWithNoException() public payable override {
    (bool success, bytes memory returndata) = address.call{value: msg.value}("");
    require(success, "Fallback function failed");
  }
}


pragma solidity ^0.8.0;
contract EtherReceiverFallback16 {
  receive () public payable {}
}
