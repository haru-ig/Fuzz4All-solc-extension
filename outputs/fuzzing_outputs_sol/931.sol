pragma solidity ^0.8.0;
contract MutatedFallback {
    receive () external payable { }
   receive (uint256 amount) external payable { }
   receive (string memory data) external payable { }
    fallback () external payable {
        revert();
    }
}
