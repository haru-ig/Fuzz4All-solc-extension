pragma solidity ^0.8.0;
contract CallerBase {
    function fallback() public payable {}
}
contract CallerDerived is CallerBase {
    payableFallback();
    receive() public payable {}
}
