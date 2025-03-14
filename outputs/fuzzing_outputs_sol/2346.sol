pragma solidity ^0.8.0;
contract Mutator {
  function modifyWithEther(uint256 value) public payable {}
  function mutator() external payable {
    modifyWithEther(uint256(-5));
  }
}

pragma solidity ^0.8.0;
contract BothMutatorsAndFallback {
  function modifyWithEther(uint256 value) public payable returns (uint256 valueA, uint256 valueB) {
    valueA = modifyWithEther(value + 1);
    valueB = modifyWithEther(value + 2);
    return (valueA + valueB);
  }
  fallback() external payable {

    mutator();
  }
  receive() external payable {

    mutator();
  }
}
