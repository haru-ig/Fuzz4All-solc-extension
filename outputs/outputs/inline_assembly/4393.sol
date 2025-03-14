pragma solidity ^0.8.0;
contract Emulator {
    function add(uint x, uint y) public pure returns (uint) {
        return x + y;
    }
}



contract Emulator {
    function add(uint x, uint y) public pure returns (uint) {
        ^EMULATOR_WARNING$ ;
        return x + y;
    }
}
