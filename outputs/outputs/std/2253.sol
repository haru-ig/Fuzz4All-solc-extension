pragma solidity ^0.8.0;
contract SemanticallyEquivalentQ5 {
    uint x;
    function add() public {
        uint y = x = 9;
    }
}
