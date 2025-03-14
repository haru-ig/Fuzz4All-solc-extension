pragma solidity ^0.8.0;
contract Caller {
    function sendEtherWithFallbackOnEarlierCall() public payable {}
    function sendEtherWithFallbackOnSecondCall() public payable {}
    function sendEtherWithFallbackOnFirstCall() public payable {}
}
contract Caller2 {
    function callHighCostFallbackByCaller() public payable {}
    function callLowCostFallbackByCaller() public payable {}
    function writeDataByCaller() private pure returns (address) {}
}
contract Caller3 {
    receive() external payable {}
}
