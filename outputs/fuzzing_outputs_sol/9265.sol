pragma solidity ^0.8.0;
contract GenericNonFallbackNew {
  receive() payable external {
  }
}
contract Fallback {
  fallback() external payable {}
}
contract Caller {
  function call(address contractAddress, uint256 amount) {
    uint256 amountStored = address(this).balance;
    address(contractAddress).payable.call{value: amount}("");
    assert(address(this).balance == amountStored.add(amount));
  }
}
