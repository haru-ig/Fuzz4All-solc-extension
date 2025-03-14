pragma solidity ^0.8.0;
contract InitialCaller {
    uint256 x;
    receive() external { x = 1; }
    fallback() external { x = 1; }
}
contract SecondCaller {
    uint256 x;
    receive() external { x = 1; }
    fallback() external { x = 1; }
}
