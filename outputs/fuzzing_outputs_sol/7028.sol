pragma solidity ^0.8.0;
contract CallerFallback2 {
    address payable _fallback;

    receive() public payable {
        _fallback.transfer(msg.value);
    }

    fallback() external payable {
    }

    fallback receive() external payable {
    }

    constructor() {
        _fallback = msg.sender;
    }

    function setFallback(address payable fallback) external {
        _fallback = fallback;
    }
}
