pragma solidity ^0.8.0;
contract FallbackUser is User {
    address payable receive() payable {}
}
