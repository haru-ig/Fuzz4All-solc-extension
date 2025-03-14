pragma solidity ^0.8.0;
contract FallbackMutable {
    uint a=1;
    function () public payable {}
}

contract BadFallback {
    fallback() external payable {}
}
