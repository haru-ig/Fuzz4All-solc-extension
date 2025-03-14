pragma solidity ^0.8.0;
contract Caller {
    receive() pure external {
        revert("No fallback function");
    }
}
