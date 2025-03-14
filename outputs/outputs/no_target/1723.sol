pragma solidity ^0.8.0;
contract Mutate0015a {
    uint input = 2;
    modifier m(uint i) {
        input = input + i;
        throw;
    }
    function callMe() m(2) public {
        assert(true);
    }
}
