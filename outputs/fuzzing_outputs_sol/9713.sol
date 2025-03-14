pragma solidity ^0.8.0;
contract CallerMutatingFallback {
    function fallback() public payable {
        uint x = 42;
        x += 10;
        require(x == 62);
    }
}
