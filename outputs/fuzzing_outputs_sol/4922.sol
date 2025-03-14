pragma solidity ^0.8.0;

contract MutatedFallback {
    function fallback(uint _dummy) public payable {
    }
}

pragma solidity ^0.8.0;

contract SimpleFallback {
    fallback() external payable {
        uint _dummy = 5;
    }
}
