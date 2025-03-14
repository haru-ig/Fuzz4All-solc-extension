pragma solidity ^0.8.0;
contract MutateFallbackExample {
    function example() public {
        contract MutateFallbackExampleFallback;
        MutateFallbackExampleFallback.nonContract[nonContract[msg.sender]] = abi.encodeWithSignature("call()");
    }
}
