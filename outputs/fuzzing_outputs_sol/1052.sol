pragma solidity ^0.8.0;
contract ContractFallback {
    constructor() {
        receive() external payable;
    }
    fallback() external payable {}
}
