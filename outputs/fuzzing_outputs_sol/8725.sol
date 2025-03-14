pragma solidity ^0.8.0;
contract mutatedCallerWithLowLevelCall {
    uint storage x;
    receive() external payable {
        x = 1;
    }
   Fallback() external payable {}
    fallback() public payable {}
}
