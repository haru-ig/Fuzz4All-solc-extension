pragma solidity ^0.8.0;
contract SimpleExample {
    contract Fallback {
        contract FallbackWithFallback {
            function () public payable {}
        }
        receive() external payable {}
        require(msg.value!= 0);
    }
}
