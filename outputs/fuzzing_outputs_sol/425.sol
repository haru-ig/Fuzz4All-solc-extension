pragma solidity ^0.8.0;
contract Fallback1 {
    receive() external payable {}
    fallback() external payable {
        revert("No fallback function");
    }
}
