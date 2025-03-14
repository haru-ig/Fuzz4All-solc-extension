pragma solidity ^0.8.0;
contract FailsCallerMutator {
  function mutation(bool arg1) external {
    uint256 initialBalance = address(this).balance;
    call(true);
    uint256 afterBalance = address(this).balance;
    require(beforeBalance <= afterBalance, "Balance check failed");
  }
  fallback() external payable {}
}
