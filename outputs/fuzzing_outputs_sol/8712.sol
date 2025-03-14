pragma solidity ^0.8.0;
contract mutatedCaller {
    receive() external payable {}
    receive() {}
    receive() {}
    function() external pure {}
    function fallback() public pure {
        throw;
    }
}
