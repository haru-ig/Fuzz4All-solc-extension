pragma solidity ^0.8.0;
contract MutatedCallWithFallback is AbstractCallWithFallback {

    fallback() external payable {
        }
    }



pragma solidity ^0.8.0;
contract UseAndCall {
    receive() external payable {
    }

    fallback() public {
        }
    }
