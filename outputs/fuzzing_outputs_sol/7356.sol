pragma solidity ^0.8.0;
contract LowCostFallback{
    receive() external payable {}

    function anotherReceive() external payable {}
}
