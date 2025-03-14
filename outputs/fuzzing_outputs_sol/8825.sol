pragma solidity ^0.8.0;
contract Fallback2 {
    fallback() external payable {}
    receive() external payable {}
}
