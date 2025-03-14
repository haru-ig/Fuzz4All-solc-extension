pragma solidity ^0.8.0;
contract newY {
    mapping(address => int) internal x;
    function test() public {
        x[msg.sender] = 1 + msg.value;
    }
}
