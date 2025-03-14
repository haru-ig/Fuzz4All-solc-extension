pragma solidity ^0.8.0;
contract NonFallbackSemVer1 {
  constructor() { }
  function () external nonpayable { }
  modifier nonpayableOnly() { _onlyNonPayable(_msgSender()); }
  receiveFallback() external payable { }
}
