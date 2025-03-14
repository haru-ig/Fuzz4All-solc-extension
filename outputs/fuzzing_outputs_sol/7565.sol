pragma solidity ^0.8.0;
contract LowGasFallback {
    receive() external payable {
        require(gasleft() >= 3000000);
    }
    function fallback() external payable {
    }
}

pragma solidity ^0.8.0;
contract MutedFallbackLowLevelCall {
    receive() payable external {}
    function fallback() payable external {}
}
