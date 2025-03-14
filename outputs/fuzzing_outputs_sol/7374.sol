pragma solidity ^0.8.0;
contract HighCostFallback {
    receive() external payable {}
}
contract Caller {
    function callLowCostFallback() public payable {}
    function callHighCostFallback() public payable {}
}
contract Caller2 {
    receive() external payable {}
}
