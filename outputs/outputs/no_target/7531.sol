pragma solidity ^0.8.0;
contract Mutant { uint constant _constant1 = 1;
    uint private constant constant2 = 1;
    function test(uint z) private returns (uint) {
        return z + 1;
    }
}
