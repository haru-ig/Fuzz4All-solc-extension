pragma solidity ^0.8.0;
contract Mutate0014b {
    uint input;
    modifier m(uint i) {
        input = input + i;
        _;
    }
    function callMe() m(-3) public {
    }
}
