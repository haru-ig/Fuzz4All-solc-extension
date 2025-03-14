pragma solidity ^0.8.0;
contract MutatedCallerAndCall {
    function sendWithoutFallback() public payable {

        Caller.mutateCallerWithoutFallback();
    }
    function sendWithFallback() public payable {

        Caller.mutateCallerWithFallback();
    }
    function mutateCallerWithoutFallback() public {
        Caller.mutateCallerWithoutFallback();
    }
    function mutateCallerWithFallback() public {
        Caller.mutateCallerWithFallback();
    }
}
