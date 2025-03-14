pragma solidity ^0.8.0;
contract BadCaller {
    receive() external payable {}
    fallback () external {}
}
