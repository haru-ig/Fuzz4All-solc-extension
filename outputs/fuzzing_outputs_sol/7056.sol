pragma solidity ^0.8.0;
contract MutatedContractWithoutFallback {
    function fallback() public () {
    }
}
