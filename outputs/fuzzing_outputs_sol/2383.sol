pragma solidity ^0.8.0;
contract CallerFallback {
  receive () external payable {
    revert("CallerFallback does not support this receive function");
  }
  function mutatedWithoutReturn() external returns(uint) {
    revert("CallerFallback does not support this mutatedWithoutReturn function");
  }
  function mutatedWithReturn() external {
    revert("CallerFallback does not support this mutatedWithReturn function");
  }
}
