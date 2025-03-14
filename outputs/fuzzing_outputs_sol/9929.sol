pragma solidity ^0.8.0;
contract Mutated {
    uint a=2;
    function mutated_() public payable returns(uint) {
        a=20;
        return a;
    }
}
