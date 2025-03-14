pragma solidity ^0.8.0;
contract CallerWithFallbackImplementation {
    contract CallerWithFallbackInterface is CallerWithFallback {
        function transfer(address payable to, uint amount) public {

            require(msg.value == amount);

            require(to == msg.sender);
        }
    }
    CallerWithFallbackImplementation() { }
}
