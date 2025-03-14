pragma solidity ^0.8.0;
contract Fallback {
  function () public payable {
  }
}

pragma solidity ^0.8.0;
contract BadFallback {
  function() public {
  }
  fallback() external payable { }
}
