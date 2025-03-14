pragma solidity ^0.8.0;
contract SendEtherHighLevel {
  uint256 _amount;
  contract NotSendEtherHighLevel {
    function notAHighLevelFunction() external payable {}
    function sendEtherUsingNotAHighLevelFunction(uint256 amount) external {
      notAHighLevelFunction();
    }
  }
  constructor(uint256 _amount) {
  }
  receive() external payable {
  }
}
