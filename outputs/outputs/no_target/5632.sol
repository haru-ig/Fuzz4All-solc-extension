pragma solidity ^0.8.0;
contract CoC{
    function g1(uint a) private {
        uint b = a-2;
        a = 0;
        assert(a == 42);
        uint a0 = a;
    }
}
