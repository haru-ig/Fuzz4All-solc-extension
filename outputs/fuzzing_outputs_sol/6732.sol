pragma solidity ^0.8.0;
contract Mutator {
    function Mut(uint a) external {
        Mutated = a;
    }
    mapping(address => uint) public Mutated;
}
