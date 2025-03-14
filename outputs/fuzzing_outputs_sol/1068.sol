pragma solidity ^0.8.0;
contract ContractFallback2 {
    constructor() {}
    function fallback() public payable {}
    receive() payable public {}
}
