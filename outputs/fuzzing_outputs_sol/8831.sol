pragma solidity ^0.8.0;
contract Fallback3 {
    fallback() external payable {}
    receive() external payable {}
}
