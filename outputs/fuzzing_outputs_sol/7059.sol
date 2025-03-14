pragma solidity ^0.8.0;
contract MutatedContractWithFallback {
    function fallback() public view {
        bytes memory nothingToReturn = "nothing";
        (uint a, uint a) = (nothingToReturn, nothingToReturn);
    }
}
