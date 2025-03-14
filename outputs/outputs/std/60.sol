pragma solidity ^0.8.0;
contract MutateProgram2 {
    bool public isMutable;
    function _divide_int_int(uint x, uint y) private pure returns (int) {
        return x / y;
    }
}
