pragma solidity ^0.8.0;
contract X {
    fallback() external payable {}
    receive() external payable {}
    receive() external payable {}
}

contract T {
    mapping(address => bool)[0] a;
}
