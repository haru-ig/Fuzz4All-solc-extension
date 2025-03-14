pragma solidity ^0.8.0;
contract c {
    uint public p;
    uint public q = 5;
    uint public array_size;
    function f(i storage i_, uint[] storage values_, uint value_) public pure {
        uint[] memory values = new uint[](500);
        values[0] = value_;
        values[1] = q;
        values[2] = 0x20000000000000000000000000000000;
        values[3] = value_;
        values[4] = q;
        uint[] memory new_array = new uint[](values.length + values.length + 5);
        for (uint i = 0; i <= array_size; i++) {
            new_array[i] = values[i];
        }
    }
}
