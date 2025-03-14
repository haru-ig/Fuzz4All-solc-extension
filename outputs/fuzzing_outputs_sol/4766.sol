pragma solidity ^0.8.0;
contract EthAddressFallback {
    receive() external payable {}
}
address payable EthAccount = address(new EthAddressFallback());
