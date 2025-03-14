pragma solidity ^0.8.0;
contract FallbackContract {
    function callFallback() public returns (uint256) {
        throw "Not implemented.";
        return 0;
    }
}
