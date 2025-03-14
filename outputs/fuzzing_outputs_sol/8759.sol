pragma solidity ^0.8.0;
contract mutatedCaller {
    receive() external payable { return; }
    function fallback() public pure { return; }
}
