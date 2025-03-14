pragma solidity ^0.8.0;
contract MutantFallbackERC20 {
    function fallback() external payable {
    }
    receive() external payable {
    }
    function normalCall(IERC20 token) public payable {
    }
    function normalTransfer(IERC20 token) public payable returns (bool) {
        return false;
    }
    function externalCall(IERC20 token) public payable {
    }
    function internalCall(IERC20 token) public payable {
    }
}
