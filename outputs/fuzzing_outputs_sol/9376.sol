pragma solidity ^0.8.0;
contract MutatingFallback8 {
  receive() external payable {
    uint test = uint160(
        (uint256(blockhash(blockhash(blockhash(block.number))))) * 12);
    uint256 test1 = num1;
    num1 = num1 + num3 * test + num2 + test1;
    num2 += 2;
  }
}
