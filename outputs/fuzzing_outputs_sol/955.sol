pragma solidity ^0.8.0;
contract ReceiveWithException {
    receive() external throws;
    receive() external payable {
        throw;
    }
}
