pragma solidity ^0.8.0;
contract test278 {
    uint a;
    uint b;
    uint[] memory array;
    uint[] barray(uint _b) public {
        uint _bplus;
        for (uint _i = 0; _i < b; _i++) {
            _bplus += array[_i];
            array[_b] = _bplus++;
        }
    }
}
