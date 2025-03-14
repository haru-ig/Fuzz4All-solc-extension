pragma solidity ^0.8.0;
contract EtherFallbackInterface
{
  function fallback() public payable returns (bool) {
    emit EtherFallbackEmit(msg.sender);
    return true;
  }
}

pragma solidity ^0.8.0;
