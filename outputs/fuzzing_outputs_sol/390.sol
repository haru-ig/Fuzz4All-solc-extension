pragma solidity ^0.8.0;
contract EmptyContract {
    receive() external { emit FallbackCalled(msg.sender); }
    fallback () external payable {}
}
