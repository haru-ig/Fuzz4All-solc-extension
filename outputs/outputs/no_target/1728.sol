pragma solidity ^0.8.0;
contract Mutate0014c {
    uint constant constantVariable = 10;
    uint constant functionArgument = 2;
    modifier m(uint i) {
        input = input + i;
        _;
    }
    function callMe(uint i) m(2) public {
        assert(input < 10);
        if (functionArgument > constantVariable) {
            assert (input > functionArgument);
        }
    }
}
