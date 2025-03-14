pragma solidity ^0.8.0;
contract CoB{
    function g1(uint a) private {
        uint b = a;
        uint c = b + -a;
    }
}
