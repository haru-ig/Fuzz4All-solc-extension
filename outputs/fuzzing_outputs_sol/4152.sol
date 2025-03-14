pragma solidity ^0.8.0;
contract ContractWithFallbackExample {
    function pay() public payable {}
    function receive() external { return externalFallback; }
    function externalFallback() public { revert(0xDEADBEEF); }
}
