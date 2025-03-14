pragma solidity ^0.8.0;
contract CallerFallbackMutated {
    function execute() payable {

        receive() external payable {}

    }
}
