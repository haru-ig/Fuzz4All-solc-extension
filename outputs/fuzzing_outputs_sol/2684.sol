pragma solidity ^0.8.0;
contract OldContract{
    mapping(address => int) internal x = [1];
    function modify(int i) public view {
        x[msg.sender] = i;
    }
}
