pragma solidity ^0.8.0;
contract Test10Ff {
    function f_() public pure {
        uint _i = 0;
        (uint[5] memory) storage x;
        x[_i] = 0;
        (uint[5][5] memory) storage y;
        y[_i][_i] = 0;
        (uint[7] memory z) memory a1;
        (uint[8][4] memory a2) storage b1 = [_i, a1, _i, _i];
        b1;
        (uint _j;) a2;
        uint[7] _k;
    }
}
