pragma solidity ^0.8.0;
contract LowCostFallback2{
    receive() external payable { throw; }
}
