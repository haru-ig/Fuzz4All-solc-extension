pragma solidity ^0.8.0;
contract ReceiveFallbackFunction {
    receive () payable external {
        assembly {
            revert(0, 0)
        }
    }
}
