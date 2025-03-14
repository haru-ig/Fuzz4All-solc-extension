pragma solidity ^0.8.0;
contract MutatingFallback {
    function fallback() public pure {}
}

pragma solidity ^0.8.0;
contract MutatingFallback {
    function _fallback() internal pure {}
}
