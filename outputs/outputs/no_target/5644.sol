pragma solidity ^0.8.0;
contract CoC{
    function g1(uint128 a, uint b) private {
        uint b_ = b*b;
        a = uint160(b_-b);
    }
}
