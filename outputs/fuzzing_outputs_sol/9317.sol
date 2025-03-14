pragma solidity ^0.8.0;
contract ReturningFallback {
  function fallback() public payable {
  }
}

pragma solidity ^0.8.0;
contract OnlyFallback {
  function fallback() public pure {
    address to = msg.sender;
    to.call{value:0}{};
  }
}
