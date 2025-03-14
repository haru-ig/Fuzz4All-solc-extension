pragma solidity ^0.8.0;

contract ContractWithFallbackFunction {
  receive() external payable {}
  function fallback() external payable {}
}
pragma solidity ^0.8.0;
contract Caller {
  receive() external payable {
    contract WithFallbackContractWithFallbackFunction = new ContractWithFallbackFunction();
    emit ReceivedEther();
  }
}
