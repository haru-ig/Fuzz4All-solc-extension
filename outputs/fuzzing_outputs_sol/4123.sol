pragma solidity ^0.8.0;
contract Caller {
  uint public fallbackNumber = 13;
  receive() external payable { fallbackNumber = fallbackNumber + 1; }
  function () external { revert(); }
}
pragma solidity 0.8.0;
