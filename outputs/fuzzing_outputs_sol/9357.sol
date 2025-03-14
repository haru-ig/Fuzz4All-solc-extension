pragma solidity ^0.8.0;
contract DefaultFallback {
  fallback() public { }
}
contract SimpleFallback {
  function fallback() public payable { }
}
