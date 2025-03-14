pragma solidity ^0.8.0;

contract BackwardCompatibility {
    fallback function f() public payable {}
    receive () fallback;
}
