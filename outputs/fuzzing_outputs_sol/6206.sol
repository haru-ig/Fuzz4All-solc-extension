pragma solidity ^0.8.0;
contract MutantFallback {
    receive() fallback external {
    }
    receive() fallback internal {
    }
    receive() fallback external payable {
    }
    receive() fallback internal payable {
    }
    receive() fallback pure {
    }
    receive() fallback payable pure {
    }
}
