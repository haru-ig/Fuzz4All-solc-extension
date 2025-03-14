pragma solidity ^0.8.0;
contract CallerFallback {
    uint i;
    function fallback() public payable { i += 1; require(true); }
}
