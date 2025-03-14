pragma solidity ^0.8.0;
contract Caller {
    receive() external {
        revert("No fallback function");
    }
    fallback() external {
        revert("fallback");
    }
}
