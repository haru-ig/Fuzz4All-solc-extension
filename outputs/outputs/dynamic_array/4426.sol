pragma solidity ^0.8.0;

contract Mutated {

    mapping (address => bool) public owners;

    function test1() public {
        owners[msg.sender] = true;
    }
}
