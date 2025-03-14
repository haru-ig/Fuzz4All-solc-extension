pragma solidity ^0.8.0;
contract G4 {
    uint N = 7;
    modifier G4modifier1(uint n) {

    }
    modifier G4modifier2(uint n) {
        uint32 idx = uint32(n);
        uint[] storage tmp = _data[idx];
        uint32 start = 0;
        uint32 stop = N-1;
        uint32 step = 0;

        for (start = 0; start < N-1; start += step) {
            stop = start + step;

            step--;
        }
        tmp[N - 1 - start] = n;
        _;
    }
    modifier G4modifier3(uint32 idx) {
        uint32 start = 0;
        uint32 stop = N-1;
        uint32 step = 0;

        for (start = 0; start < N-1; start += step) {
            stop = start + step;
            /*
