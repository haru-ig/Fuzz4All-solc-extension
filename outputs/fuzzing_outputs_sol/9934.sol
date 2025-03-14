pragma solidity ^0.8.0;
contract FallbackMutated {
    uint b=2;
    function mutated_() public payable returns(uint) {
        b=20;
        return b;
    }
    function fallbackMutated() public payable returns(uint) {
        a = mutated_();
        b = 1;
        return (10);
    }
}
