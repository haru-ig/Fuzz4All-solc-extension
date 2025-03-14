pragma solidity ^0.8.0;
contract NonFallback {
  function () external payable {}
  receive () external payable{}
}
