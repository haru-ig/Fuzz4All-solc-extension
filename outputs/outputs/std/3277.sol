pragma solidity ^0.8.0;
contract Mutate {
    function f(uint numerator, uint denominator)
    public
    returns (uint){
    uint remainder;
    uint quotient = numerator / denominator;
    remainder = numerator % denominator;
    return quotient;
    }
}
