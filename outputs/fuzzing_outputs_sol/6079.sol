pragma solidity ^0.8.0;
contract MutatedEtherTesterFallback {
    receive() external payable {}
    receive() external {

        require(true);
    }
}
