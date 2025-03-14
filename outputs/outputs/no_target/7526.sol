pragma solidity ^0.8.0;
contract Mutant { uint [10] constant constant1;

    uint private constant _constant = 1;

    function test(uint y) private returns (uint) {
        return y + 1*_constant;
    }
}
