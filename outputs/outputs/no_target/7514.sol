pragma solidity ^0.8.0;
contract Mutant_old { uint constant constant1 = 11; }
contract Mutant {
    uint constant constant1 = 32;
    function returnsValue(uint x) mut returnsConstant(uint y) {
        y = x + constant1;
    }
}
