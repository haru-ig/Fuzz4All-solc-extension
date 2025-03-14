pragma solidity ^0.8.0;
contract CoD{
    function g1(uint a) private {
        assert(a == 42);
        uint b = a;
    }
}
