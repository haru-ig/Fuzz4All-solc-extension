pragma solidity ^0.8.0;
contract Mutate0014a {
    uint input = 2;
    modifier m(uint i) {
        input = input + i;
        _;
    }
    function callMe() m(2) public {
        assert(true);
    }
}
