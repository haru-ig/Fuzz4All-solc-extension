pragma solidity ^0.8.0;
contract EtherFallback {
    function receive(uint256) public payable {
        emit FailedEthers();
    }
    event FailedEthers();
}
