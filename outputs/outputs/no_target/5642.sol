pragma solidity ^0.8.0;
contract CoC{
    function g1(uint a) private {
        a = 0;
        a = a-(a-2);
        uint a0 = a;
    }
}
