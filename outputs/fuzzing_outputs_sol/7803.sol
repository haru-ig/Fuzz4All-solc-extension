pragma solidity ^0.8.0;
contract FallbackCaller {
    fallback() payable {}
    function fallback() external payable {}
}
contract FallbackCallerWithoutFallback {
    fallback() payable {}
}
