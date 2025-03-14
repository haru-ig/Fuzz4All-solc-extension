pragma solidity ^0.8.0;
interface CallerWithFallback {
    function transfer(address payable to, uint256 amount) external;
}
