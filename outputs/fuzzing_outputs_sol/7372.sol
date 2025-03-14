pragma solidity ^0.8.0;
contract Caller {
    function sendEther() external payable {
        fallback(address(LowCostFallback()));
        lowCostCall();
    }
    function lowCostCall() public payable {}
}
