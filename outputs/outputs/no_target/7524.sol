pragma solidity ^0.8.0;
contract Mutant { uint constant constant1 = 1;
    uint private constant _constant = 1;
    function test(uint z) private returns (uint) {

        return z + 1*_constant;
    }
}
