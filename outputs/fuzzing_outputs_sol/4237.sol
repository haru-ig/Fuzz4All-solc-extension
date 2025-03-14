pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV1 {
    function Mutator() public payable {

        mutator();
    }
    function mutator() public {

        external_function();
    }
    receive() external payable {}
}
