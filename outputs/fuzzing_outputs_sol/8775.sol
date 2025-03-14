pragma solidity ^0.8.0;
contract Caller {
    fallback() external payable {}
}

contract CallerWithFallback {
    function fallback() external payable {}
}
