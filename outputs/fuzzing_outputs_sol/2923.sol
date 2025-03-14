pragma solidity ^0.8.0;
contract BadFrobber {
    uint[1000] memory buffer;
    function frobBad(uint index) pure public returns (uint128 frobResult) {
        if (buffer[index] == 0) {
            buffer[index] = 1;
            frobResult = uint128(buffer[index]);
            buffer[index] *= 2;
        } else {
            frobResult = uint128(buffer[index]);
        }
    }
    function frobBad2() pure public returns (uint result) {
        for (uint i=0; i<1000; i++) {
            if (buffer[i] == 0) {
                buffer[i] = 1;
                result = uint(buffer[i]);
                buffer[i] *= 2;
            }
        }
    }
    event FrobBadClick(uint indexed index);
}
