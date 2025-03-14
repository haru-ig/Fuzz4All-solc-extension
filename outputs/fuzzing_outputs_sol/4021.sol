pragma solidity ^0.8.0;
contract MutantCaller {
  uint256 external constant internal value = 3;
  contract MyContract {

    function call(uint256 x) public returns (uint256 y) {
      y = (address(this).balance + x) / 2;
    }
    receive() external payable {}
  }
}
