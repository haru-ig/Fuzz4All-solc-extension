pragma solidity ^0.8.0;
contract Fallback {
    receive() external payable {
        revert("No fallback function");
    }
    fallback() external payable {
        revert("fallback");
    }
}
