pragma solidity ^0.8.0;
contract HighCostFallback {
    receive() external payable { }
}
contract Caller {
    function callLowCostFallback() public payable {
        address(this).balance;
    }
    function callHighCostFallback() public payable {
        address(this).balance;
    }
}
contract Caller2 {
    receive() external payable {}
}
