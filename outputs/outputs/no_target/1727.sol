pragma solidity ^0.8.0;
contract Mutate0014c {
    uint constant constantVariable = 10;
    uint constant functionArgument = 2;
    modifier m(uint i) {
        _;
    }
    function callMe(uint i) m(1) internal {
        if (functionArgument > constantVariable) {
            assert (input > functionArgument);
        }
    }
}
