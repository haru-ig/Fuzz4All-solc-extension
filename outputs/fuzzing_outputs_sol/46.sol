pragma solidity ^0.8.0;
contract InitialCallerFallback {
    uint256 x;
    fallback() external { x = 1; }
}
contract SecondCallerFallback {
    uint256 x;
    fallback() external { x = 1; }
}
`
