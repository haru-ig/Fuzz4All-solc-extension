pragma solidity ^0.8.0;
contract ContractWithFallback {
    fallback() external payable{}
    receive() external payable{}
}
