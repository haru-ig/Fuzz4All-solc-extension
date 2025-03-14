pragma solidity ^0.8.0;

contract ContractEmptyFallback {
    function ContractEmptyFallback() public {
        deployFallback();
    }
    function deployFallback() public initializer {}
    receive() external payable {
        revert();
    }
}
