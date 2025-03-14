pragma solidity ^0.8.0;
contract LowCostFallback {
    receive() public pure {}
}
contract LowCostFallback {
    constructor() public {}

    receive() payable internal {}
}
