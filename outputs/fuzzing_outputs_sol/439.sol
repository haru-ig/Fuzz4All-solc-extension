pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {

        revert("No fallback function");
    }
}
