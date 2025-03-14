pragma solidity ^0.8.0;
contract mutatedCaller {
    receive() external pure { return; }
    function fallback() public pure { return; }
}
