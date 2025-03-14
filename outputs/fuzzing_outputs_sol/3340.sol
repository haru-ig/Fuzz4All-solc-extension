pragma solidity ^0.8.0;
contract S {
    receive() external payable {}
    fallback() public payable {}
}
