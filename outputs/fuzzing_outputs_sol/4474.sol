pragma solidity ^0.8.0;
contract ContractFallback {
    fallback () public{}
    receive() external payable {}
}
