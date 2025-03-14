pragma solidity ^0.8.0;
contract ContractWithFallback {
    constructor() public {
        ContractWithFallback(new uint());
    }
}
